; http://www.rosettacode.org/wiki/Mandelbrot_set

(define x-size 59)
(define y-size 21)
(define min-im -1)
(define max-im 1)
(define min-re -2)
(define max-re 1)

(define step-x (/ (- max-re min-re) x-size))
(define step-y (/ (- max-im min-im) y-size))

(for-each (lambda (y)
      (let ((im (+ min-im (* step-y y))))
         (for-each (lambda (x)
            (let*((re (+ min-re (* step-x x)))
                  (zr (inexact re))
                  (zi (inexact im)))
               (let loop ((n 0) (zi zi) (zr zr))
                  (let ((a (* zr zr))
                        (b (* zi zi)))
                     (cond
                        ((> (+ a b) 4)
                           (display (string (- 62 n))))
                        ((= n 30)
                           (display (string (- 62 n))))
                        (else
                           (loop (+ n 1) (+ (* 2 zr zi) im) (- (+ a re) b))))))))
            (iota x-size))
         (print)))
   (iota y-size))
