;p51 ex.1.44 smooth


(define dx 0.00001)
(define (smooth f)
  (lambda (x)
	(/ (+ 
		 (f (- x dx))
		 (f x)
		 (f (+ x dx)))
	   3.0)))

