(load "smooth.scm")
(load "repeated-compose-iter.scm")

(define (repeated-smooth f n)
  (lambda (x)
	(((repeated smooth n) f) x)))

