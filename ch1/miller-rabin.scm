; Miller-Rabin

(define (square x)
  (* x x))

(define (expmod b e m)
  (cond ((= e 0) 1)
		((nontrivial-square-root b m)
		 0)
		((even? e)
		  (remainder (square (expmod b (/ e 2) m))
					 m))
		(else
		  (remainder (* b (expmod b (- e 1) m))
					 m))))
(define (neq? a b)
  (not (= a b)))

(define (nontrivial-square-root a n)
  (and (neq? a 1)
	   (neq? a (- n 1))
	   (= 1 (remainder (square a) n))))

(define (miller-rabin n)

  (define (test)
	(define (try a)
	  (= (expmod a (- n 1) n) 1))
	(try (+ 1 (random (- n 1)))))

  (define (iter count)
	(cond ((<= count 0) #t)
		  ((test) (iter (- count 1)))
		  (else #f)))

  (if (< n 2) #f
	(iter (min 10 (ceiling (/ n 2)))))) ;尝试10次

(define mr miller-rabin)
