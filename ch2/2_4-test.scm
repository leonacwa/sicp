; test for 2.4

(load "2_4-cons.scm")

(define (main)
  (let ((p (cons 1 2)))
	(display (car p))
	(newline)
	(display (cdr p))
	(newline)
	))

(main)
