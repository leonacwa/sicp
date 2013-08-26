;p52 ex1.46 sqrt
(load "iterative-improve.scm")

(define (mysqrt x)

  (define tolerance 0.000001)

  (define (improve guess)
	(average guess (/ x guess)))

  (define (average x y)
	(/ (+ x y) 2))

  (define (close-enough? v1 v2)
	(< (abs (- v1 v2)) tolerance))

  ((iterative-improve close-enough? improve) 1.0))

(mysqrt 2)
