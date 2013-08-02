; Carmichael numbers: 561 1105 2465 2821 6601
(load "expmod.scm")

(define (carmichael-test n)

  (define (test a)
	(= (expmod a n n) a))

  (define (iter n a)
	(cond ((= a n) #t)
		  ((test a) (iter n (+ a 1)))
		  (else #f)))

  (if (<= n 1) #f
	(iter n 2)))

(define ct carmichael-test)
