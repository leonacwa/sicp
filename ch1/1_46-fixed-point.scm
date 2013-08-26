;p52 ex1.46 fixed-point

(load "iterative-improve.scm")

(define (fixed-point f first-guess)

  (define tolerance 0.000001)
  (define (close-enough? v1 v2)
	(< (abs (- v1 v2)) tolerance))
  (define (improve guess)
	(f guess))
  ((iterative-improve close-enough? improve) first-guess))

(define (golden x)
  (+ 1 (/ 1.0 x)))

(fixed-point golden 1.0)
