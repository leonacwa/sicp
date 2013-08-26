;p52 ex1.46 iterative-improve

(define (iterative-improve close-enough? improve)
  (lambda (first-guess)
	(define (try guess)
	  (let ((next (improve guess)))
		(if (close-enough? guess next)
		  next
		  (try next))))
	(try first-guess)))

