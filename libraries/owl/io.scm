;;;
;;; Simple direct blocking IO (replaces the old thread-based one)
;;;

(define-library (owl io)

   (export
      current-input-port
      current-output-port
      current-error-port

      ;; thread-oriented non-blocking io
      open-input-file         ;; path → fd | #false
      open-binary-input-file   
      open-output-file        ;; path → fd | #false
      open-binary-output-file
      flush-port              ;; fd → _
      close-port              ;; fd → _

      ;; stream-oriented blocking (for the writing thread) io
;      blocks->port            ;; ll fd → ll' n-bytes-written, don't close fd
;      closing-blocks->port    ;; ll fd → ll' n-bytes-written, close fd

      file->bytevector  ;; bytevectors io, may be moved elsewhere later
      bytevector->file
      write-bytevector

      ;; file->blob write-blob
      file->list              ;; list io, may be moved elsewhere later

      port->bytestream       ;; fd → (byte ...) | thunk
      file->bytestream
      bytestream->file

      write-bytestream

      stdin stdout stderr
      display-to        ;; port val → bool
      print-to          ;; port val → bool
      display
      print
      write             ; (obj), (obj port)
      writer-to         ;; names → (port val → bool + io)
      write-bytes       ;; port byte-list   → bool
      get-block         ;; fd n → bvec | eof | #false
      try-get-block     ;; fd n block? → bvec | eof | #false=error | #true=block
      lines             ;; fd → null | ll of string, read error is just null, each [\r]\n removed

      system-print system-println system-stderr
      fasl-save         ;; obj path → done?
      fasl-load         ;; path default → done?
   )

   (import
      (scheme core)
      (owl async)
      (owl queue)
      (owl string)
      (owl list-extra)
      (owl ff)
      (otus blobs)
      (owl render)
      (owl list)
      (owl math)
      (otus fasl)
      (owl lazy)
      (scheme bytevector)
      (otus vm)
      (only (otus blobs) merge-chunks blob-leaves))

   (begin
      (define-syntax lets (syntax-rules () ((lets . stuff) (let* . stuff)))) ; TEMP

      ;; standard io ports
      (define stdin  (vm:cast 0 type-port))
      (define stdout (vm:cast 1 type-port))
      (define stderr (vm:cast 2 type-port))

      (define (current-input-port) stdin)
      (define (current-output-port) stdout)
      (define (current-error-port) stderr)

      (define (sys:read fd maxlen)         (syscall 0 fd maxlen))
      (define (sys:write fd buffer length) (syscall 1 fd buffer length))

      ; low-level file open/close functions
      (define (sys:open path mode)
         (cond
            ((c-string path) =>
               (λ (path) (syscall 2 path mode)))))

      (define (sys:close fd)
         (syscall 3 fd))


      ;;; Writing

      ;; #[0 1 .. n .. m] n → #[n .. m]
      (define (bvec-tail bvec n)
         (make-bytevector (map (lambda (p) (ref bvec p)) (lrange n 1 (size bvec)))))

      (define (try-write-block fd bvec len)
         (if (port? fd) (sys:write fd bvec len) #false))

      ;; bvec port → bool
      (define (write-really bvec fd)
         (let ((end (size bvec)))
            (if (eq? end 0)
               #true
               (let loop ()
                  (let ((wrote (try-write-block fd bvec end)))
                     (cond
                        ((eq? wrote end) #true) ;; ok, wrote the whole chunk
                        ((eq? wrote 0) ;; 0 = EWOULDBLOCK
                           (sleep 2) ;; fixme: adjustable delay rounds
                           (loop))
                        (wrote ;; partial write
                           (write-really (bvec-tail bvec wrote) fd))
                        (else #false))))))) ;; write error or other failure

      ;; how many bytes (max) to add to output buffer before flushing it to the fd
      (define output-buffer-size 4096)

      (define (open-input-file path) (sys:open path #o0000)) ; O_RDONLY
      (define (open-binary-input-file path)
                                   (sys:open path #o100000)); O_RDONLY|O_BINARY

      (define (open-output-file path) (sys:open path #o1102)) ; O_CREAT|O_TRUNC|O_RDWR
      (define (open-binary-output-file path)
                                    (sys:open path #o101102)) ; O_CREAT|O_TRUNC|O_RDWR+O_BINARY

      ;;; Reading

      (define input-block-size
         *blob-leaf-size*) ;; changing from 256 breaks vector leaf things

      (define (try-get-block fd block-size block?)
         (let ((res (sys:read fd block-size)))
            (if (eq? res #true) ;; would block
               (if block?
                  (begin
                     (sleep 5)
                     (try-get-block fd block-size #true))
                  res)
               res))) ;; is #false, eof or bvec

      ;; get a block of size up to block size
      (define (get-block fd block-size)
         (try-get-block fd block-size #true))

      (define (bvec-append a b)
         (make-bytevector
            (append
               (bytevector->list a)
               (bytevector->list b))))

      ;; get a block of size block-size, wait more if less is available and not eof
      ;; fd n → eof-seen? eof|#false|bvec
      (define (get-whole-block fd block-size)
         (let ((this (get-block fd block-size)))
            (cond
               ((eof? this) (values #true this))
               ((not this) (values #false this))
               (else
                  (let ((n (size this)))
                     (if (eq? n block-size)
                        (values #false this)
                        (lets ((eof-seen? tail (get-whole-block fd (- block-size n))))
                           (cond
                              ((eof? tail) (values #true this))
                              ((not tail) (values #false this)) ;; next read will also fail, return last ok data
                              (else
                                 ;; unnecessarily many conversions if there are many partial
                                 ;; reads, but block size is tiny in file->blob making this
                                 ;; irrelevant
                                 (values eof-seen?
                                    (bvec-append this tail)))))))))))


      ;; deprecated
      (define (flush-port fd)
         ;(mail fd 'flush)
         42)

      (define (close-port fd)
         (sys:close fd))



      ;;;
      ;;; STREAM BASED IO
      ;;;

      (define socket-read-delay 2)

      ;; In case one doesn't need asynchronous atomic io operations, one can use
      ;; threadless stream-based blocking (for the one thred) IO.

      ;; write a stream of byte vectors to a fd and
      ;; (bvec ...) fd → ll' n-written, doesn't close port
      ;;                  '-> null if all written without errors
      (define (blocks->port ll fd)
         (let loop ((ll ll) (n 0))
            (cond
               ((pair? ll)
                  (if (bytevector? (car ll))
                     (if (write-really (car ll) fd)
                        (loop (cdr ll) (+ n (size (car ll))))
                        (values ll n))
                     (values ll n)))
               ((null? ll)
                  (values ll n))
               (else
                  (loop (ll) n)))))

      (define (closing-blocks->port ll fd)
         (lets ((r n (blocks->port ll fd)))
            (sys:close fd)
            (values r n)))

      ;;;
      ;;; Rendering and sending
      ;;;

      ;; splice lst to bvecs and call write on fd
      (define (printer lst len out fd)
         (cond
            ((eq? len output-buffer-size)
               (and
                  (write-really (make-bytevector (reverse out)) fd)
                  (printer lst 0 null fd)))
            ((null? lst)
               (write-really (make-bytevector (reverse out)) fd))
            (else
               ;; avoid dependency on generic math in IO
               (printer (cdr lst) (++ len) (cons (car lst) out) fd))))

      (define (writer-to names)
         (let ((serialize (make-serializer names)))
            (λ (to obj)
               (printer (serialize obj '()) 0 null to))))



      (define (write-bytevector port bvec)
         (write-really bvec port))

      (define (write-bytes port byte-list)
         (printer byte-list 0 null port))

      (define write-bytestream (case-lambda
         ((bytestream)
               (write-bytes stdout bytestream))
         ((bytestream port)
               (write-bytes port bytestream))))

      ;; write each leaf chunk separately (note, no raw type testing here -> can fail)
      ;; (define (write-blob vec port)
      ;;    (let loop ((ll (blob-leaves vec)))
      ;;       (cond
      ;;          ((pair? ll)
      ;;             (write-bytevector port (car ll))
      ;;             (loop (cdr ll)))
      ;;          ((null? ll) #true)
      ;;          (else (loop (ll))))))

      (define (display-to to obj)
         (printer (render obj '()) 0 null to))

      (define display (case-lambda
         ((obj) (display-to stdout obj))
         ((obj port) (display-to port obj))))

      (define write-to
         (writer-to {})) ; we can add a map with lot of simple functions, like "map" or "fold"...
            ;; (put #empty map "map")))

      (define write (case-lambda
         ((obj) (write-to stdout obj))
         ((obj port) (write-to port obj))))


      (define (print-to to . stuff)
         (printer (foldr render '(10) stuff) 0 null to))

      (define print
         (case-lambda
            ((obj) (print-to stdout obj))
            (args (printer (foldr render '(#\newline) args) 0 null stdout))))


      ;; fixme: system-X do not belong here
      (define (system-print str)
         (sys:write stdout str (size str)))

      (define (system-println str)
         (system-print str)
         (system-print "\n"))

      (define (system-stderr str) ; <- str is a raw or pre-rendered string
         (sys:write stderr str (size str)))

      ;;;
      ;;; Files <-> vectors
      ;;;

      ;; read all blocks for a port, all but possibly last one having input-block-size bytes
      (define (read-blocks port buff)
         (lets ((eof-seen? val (get-whole-block port input-block-size)))
            (cond
               (eof-seen?
                  (let ((buff (if (eof? val) buff (cons val buff))))
                     (merge-chunks
                        (reverse buff)
                        (fold + 0 (map size buff)))))
               ((not val)
                  #false)
               (else
                  (read-blocks port
                     (cons val buff))))))

      (define (explode-block block tail)
         (let ((end (size block)))
            (if (eq? end 0)
               tail
               (let loop ((pos (- end 1)) (tail tail))
                  (if (eq? pos -1)
                     tail
                     (loop (- pos 1) (cons (ref block pos) tail)))))))

      (define (read-blocks->list port buff)
         (let ((block (get-block port 4096)))
            (cond
               ((eof? block)
                  (foldr explode-block null (reverse buff)))
               ((not block)
                  ;; read error
                  (foldr explode-block null (reverse buff)))
               (else
                  (read-blocks->list port (cons block buff))))))

      (define (maybe-open-file path)
         (if (equal? path "-")
            stdin
            (open-input-file path)))
      (define (maybe-open-binary-file path)
         (if (equal? path "-")
            stdin
            (open-binary-input-file path)))

      (define (maybe-close-port port)
         (if (eq? port stdin)
            #true
            (close-port port)))

      ; bytevector:
      (define (port->bytevector port) ; path -> vec | #false
         (if port
            (let ((stat (syscall 4 port)))
               (if stat
                  ; todo: add handling of not full file reading
                  ; (sleep and read again and bytevector-append then)
                  (sys:read port (ref stat 8))))))

      (define (file->bytevector path) ; path -> vec | #false
         (let*((port (maybe-open-binary-file path))
               (file (port->bytevector port)))
            (maybe-close-port port)
            file))

      ;; fixme: no way to poll success yet. last message should be ok-request, which are not there yet.
      ;; fixme: detect case of non-bytevectors, which simply means there is a leaf which is not of type (raw 11)
      (define (bytevector->file vec path)
         (let ((port (open-binary-output-file path)))
            (if port
               (let ((outcome (sys:write port vec #false)))
                  (close-port port)
                  outcome))))
      (define (bytestream->file stream path)
         (let ((port (open-binary-output-file path)))
            (if port
               (let ((outcome (write-bytestream stream port)))
                  (close-port port)
                  outcome))))


      ; BLOB:
      ;; (define (fd->blob port) ; path -> vec | #false
      ;;    (if port
      ;;       (read-blocks port null)))

      ;; (define (file->blob path) ; path -> vec | #false
      ;;    (let*((port (maybe-open-file path))
      ;;          (blob (fd->blob port)))
      ;;       (maybe-close-port port)
      ;;       blob))

      ; list:
      (define (file->list path) ; path -> vec | #false
         (let ((port (maybe-open-binary-file path)))
            (if port
               (let ((data (read-blocks->list port null)))
                  (maybe-close-port port)
                  data))))

      (define (stream-chunk buff pos tail)
         (if (eq? pos 0)
            (cons (ref buff pos) tail)
            (lets ((next x (vm:sub pos 1)))
               (stream-chunk buff next
                  (cons (ref buff pos) tail)))))

      (define (port->bytestream fd)
         (λ ()
            (let ((buff (get-block fd input-block-size)))
               (cond
                  ((eof? buff)
                     (maybe-close-port fd)
                     null)
                  ((not buff)
                     ;(print "bytes-stream-port: no buffer received?")
                     null)
                  (else
                     (stream-chunk buff (- (size buff) 1)
                        (port->bytestream fd)))))))

      (define (lines fd)
         (let loop ((ll (port->bytestream fd)) (out null))
            (cond
               ((pair? ll)
                  (lets ((byte ll ll))
                     (if (eq? byte #\newline)
                        (pair
                           (list->string
                              (reverse
                                 (if (and (pair? out) (eq? #\return (car out)))
                                    (cdr out)
                                    out)))
                           (loop ll null))
                        (loop ll (cons byte out)))))
               ((null? ll)
                  (if (null? out)
                     null
                     (list
                        (list->string (reverse out)))))
               (else
                  (loop (ll) out)))))

      (define (file->bytestream path)
         (let ((port (maybe-open-binary-file path)))
            (if port
               (port->bytestream port))))

      (define (fasl-save obj path)
         (bytestream->file
            (fasl-encode obj)
            path))

      (define (fasl-load path fail-val)
         (let ((bs (file->bytestream path)))
            (if bs
               (fasl-decode bs fail-val)
               fail-val)))
))
