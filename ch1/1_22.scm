(load "prime.scm")

(define (next-odd n)
  (if (= (remainder n 2) 0)
	(+ n 1)
	(+ n 2)))

(define (get-primes n count)
  (cond ((= count 0)
		 (display " are primes."))
		((prime? n)
		 (newline)
		 (display n)
		 (get-primes (next-odd n) (- count 1)))
		(else
		  (get-primes (next-odd n) count))))

(define (search-for-prime n)
  (let ((start-time (real-time-clock)))
  ;(let ((start-time (runtime)))
	(get-primes n 3)
	(- (real-time-clock) start-time)))
	;(- (runtime) start-time)))

