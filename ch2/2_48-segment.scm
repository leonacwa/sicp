;ex 2.48 
(load "2_46-vect.scm")

(define (make-segment start end)
  (list start end))

(define (start-segment segment)
  (car segment))

(define (end-segment segment)
  (cadr segment))

(define (print-segment segment)
  (display "[")
  (print-vect (start-segment segment))
  (display ",")
  (print-vect (end-segment segment))
  (display "]"))

