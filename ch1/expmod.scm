(define (square x)
  (* x x))

(define (expmod b e m)
  (cond ((= e 0) 1)
		((even? e)
		  (remainder (square (expmod b (/ e 2) m))
					 m))
		(else
		  (remainder (* b (expmod b (- e 1) m))
					 m))))

