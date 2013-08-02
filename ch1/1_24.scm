(load "1_22.scm")
(load "fast-prime.scm")

(define (prime? n)
  (fast-prime? n 10))

(define (search-for-prime n)
  (let ((start-time (real-time-clock)))
	(get-primes n 12)
	(- (real-time-clock) start-time)))

