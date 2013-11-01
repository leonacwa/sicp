(load "2_41-unique-triple.scm")

(define (sum-equal n s)
  (define (equal-s? pair)
	(= s (+ (car pair) (cadr pair) (caddr pair))))
  (filter equal-s? (unique-triple n)))

