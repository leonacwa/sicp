
(define (prime? n)
  (define (iter x up)
	(cond ((> x up) #t)
		  ((= 0 (remainder n x)) #f)
		  (else (iter (+ x 1) up))))
  (let ((up (+ (sqrt n) 0.001)))
	(iter 2 up)))

