;p34 费马测试
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

(define (fermat-test n)
  (define (try-it a)
	(= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
  (cond ((= times 0) #t)
		((fermat-test n) (fast-prime? n (- times 1)))
		(else #f)))

