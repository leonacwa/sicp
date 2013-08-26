;p52 ex1.45

(load "fixed-point.scm")
(load "average-damp.scm")
(load "repeated-compose-iter.scm")

(define (yx x n)
  (lambda (y)
	(/ x
	   (expt y (- n 1)))))

(define (damped-nth-root n damped-times)
  (lambda (x)
	(fixed-point
	  ((repeated average-damp damped-times) (yx x n)) 1.0)))

