(define-library (lib json)
   (export
      print-json-with guid rand!)
   (import (otus lisp))

(begin
; good fast randomizer
(define rand!
   (let* ((ss ms (clock))
          (seed (band (+ ss ms) #xffffffff))
          (seed (cons (band seed #xffffff) (>> seed 24))))
      (lambda (limit)
         (let*((next (+ (car seed) (<< (cdr seed) 24)))
               (next (+ (* next 1103515245) 12345)))
            (set-car! seed (band     next     #xffffff))
            (set-cdr! seed (band (>> next 24) #xffffff))

            (mod (mod (floor (/ next 65536)) 32768) limit)))))

; guid generator
(define (guid)
   (let ((a1 (rand! #x10000))
         (a2 (rand! #x10000))
         (b1 (rand! #x10000))
         (b2 (rand! #x10000))
         (b3 (rand! #x10000))
         (c1 (rand! #x10000))
         (c2 (rand! #x10000))
         (c3 (rand! #x10000))
         (c4 (rand! #x10000))
         (ss "0123456789abcdef"))
     (runes->string (list (string-ref ss (band (>> a1 12) 15))
                          (string-ref ss (band (>> a1  8) 15))
                          (string-ref ss (band (>> a1  4) 15))
                          (string-ref ss (band (>> a1  0) 15))
                          (string-ref ss (band (>> a2 12) 15))
                          (string-ref ss (band (>> a2  8) 15))
                          (string-ref ss (band (>> a2  4) 15))
                          (string-ref ss (band (>> a2  0) 15))
                          #\-
                          (string-ref ss (band (>> b1 12) 15))
                          (string-ref ss (band (>> b1  8) 15))
                          (string-ref ss (band (>> b1  4) 15))
                          (string-ref ss (band (>> b1  0) 15))
                          #\-
                          (string-ref ss (band (>> b2 12) 15))
                          (string-ref ss (band (>> b2  8) 15))
                          (string-ref ss (band (>> b2  4) 15))
                          (string-ref ss (band (>> b2  0) 15))
                          #\-
                          (string-ref ss (band (>> b3 12) 15))
                          (string-ref ss (band (>> b3  8) 15))
                          (string-ref ss (band (>> b3  4) 15))
                          (string-ref ss (band (>> b3  0) 15))
                          #\-
                          (string-ref ss (band (>> c1 12) 15))
                          (string-ref ss (band (>> c1  8) 15))
                          (string-ref ss (band (>> c1  4) 15))
                          (string-ref ss (band (>> c1  0) 15))
                          (string-ref ss (band (>> c2 12) 15))
                          (string-ref ss (band (>> c2  8) 15))
                          (string-ref ss (band (>> c2  4) 15))
                          (string-ref ss (band (>> c2  0) 15))
                          (string-ref ss (band (>> c3 12) 15))
                          (string-ref ss (band (>> c3  8) 15))
                          (string-ref ss (band (>> c3  4) 15))
                          (string-ref ss (band (>> c3  0) 15))
                          (string-ref ss (band (>> c4 12) 15))
                          (string-ref ss (band (>> c4  8) 15))
                          (string-ref ss (band (>> c4  4) 15))
                          (string-ref ss (band (>> c4  0) 15))
))))

#|
; smart display that prints inexact numbers in dot-notaion:
(define :display display)
(define (display i)
   (case (type i)
   (type-rational
      (let*((int (floor i))
            (frac (floor (* (- i int) 10000))))
      (display int) (display ".")
      (let loop ((i frac) (n 1000))
         (display (floor (/ i n)))
         (if (less? 1 n)
            (loop (mod i n) (/ n 10))))))
   (else
      (:display i))))

; main function:
(define (jsonify tab L)
   (if (not (null? L))
   (let ((i (car L)))
      (display tab)
      (for-each display `("\"" ,(car i) "\"" ": ")) ; parameter name
      (cond
         ((string? (cdr i))
            (for-each display `("\"" ,(cdr i) "\""))
            (if (not (null? (cdr L))) (display ","))
            (print))
         ((symbol? (cdr i))
            (for-each display `("\"" ,(cdr i) "\""))
            (if (not (null? (cdr L))) (display ","))
            (print))
         ((number? (cdr i))
            (for-each display `(     ,(cdr i)     ))
            (if (not (null? (cdr L))) (display ","))
            (print))
         ((boolean? (cdr i))
            (display (if (cdr i) "true" "false"))
            (if (not (null? (cdr L))) (display ","))
            (print))
         ((list? (cdr i))
            (print "{")
            (jsonify (str-app tab "  ") (cdr i))
            (for-each display `(     ,tab      "}"))
            (if (not (null? (cdr L))) (display ","))
            (print))
         ((vector? (cdr i))
            (print "[")
            (let ((tab (str-app tab "  "))
                  (vec (cdr i))
                  (len (vec-len (cdr i))))
               (let loop ((n 0))
                  (if (less? n len) (begin
                     (print tab "{")
                     (jsonify (str-app tab "  ") (vector-ref vec n))
                     (display tab)
                     (display "}")
                     (if (less? (+ n 1) len)
                        (display ","))
                     (print)
                     (loop (+ n 1))))))
            (for-each display `(     ,tab      "]"))
            (if (not (null? (cdr L))) (display ","))
            (print))
         (else
            (display "?")
            (if (not (null? (cdr L))) (display ","))))
      (jsonify tab (cdr L)))))|#

(define (print-json-with display object)
   (let jsonify ((L object))
      (cond
         ((symbol? L)
            (for-each display `("\"" ,L "\"")))
         ((string? L)
            (for-each display `("\"" ,L "\"")))
         ((boolean? L)
            (display (if L "true" "false")))

         ((integer? L)
            (display L))
         ((rational? L)
            (let*((int (floor L))
                  (frac (floor (* (- L int) 10000))))
            (display int) (display ".")
            (let loop ((i frac) (n 1000))
               (display (floor (/ i n)))
               (if (less? 1 n)
                  (loop (mod i n) (/ n 10))))))
         ((vector? L)
            (display "[")
            (let ((len (vec-len L)))
               (let loop ((n 0))
                  (if (less? n len) (begin
                     (jsonify (vector-ref L n))
                     (if (less? (+ n 1) len)
                        (display ","))
                     (loop (+ n 1))))))
            (display "]"))
         ((list? L)
            (display "{")
            (let loop ((L L))
               (if (not (null? L)) (begin
                  (for-each display `("\"" ,(caar L) "\":"))
                  (jsonify (cdar L))
                  (if (not (null? (cdr L)))
                     (display ","))
                  (loop (cdr L)))))
            (display "}")))))

))
