
(define (div-interval x y)
  (if (and (>= (upper-bound y) 0)
		   (<= (lower-bound y) 0))
	(error "Denominator spans zero")
	(mul-interval x
				  (make-interval (/ 1.0 (upper-bound y))
								 (/ 1.0 (lower-bound y))))))

