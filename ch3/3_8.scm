;ex 3.8 apply order

(define (new-f)
  (let ((tag 'new)
		(value 0))
	(lambda (x)
	  (if (eq? tag 'new)
		(begin
		  (set! tag 'modify)
		  (set! value x)))
	  value)))

(define f (new-f))

(define result 
  (+ (f 0) (f 1)))

(display result) (newline)
