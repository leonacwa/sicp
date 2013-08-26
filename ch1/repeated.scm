; iter

(define (repeated f n)
  (define (iter i repeated-f)
	(if (= i 1)
	  repeated-f
	  (iter (- i 1)
			(lambda (x)
			  (f (repeated-f x))))))
  (if (< n 1) (error "n must be greater than 0\n")
	(iter n f)))

