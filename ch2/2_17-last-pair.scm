;ex 2.17 last pair

(define (last-pair li)
  (if (null? (cdr li))
	(car li)
	(last-pair (cdr li))))

