; 小于n的所有与n互素的正整数的乘积
(load "filtered-accumulate-recu.scm")

(define (coprime-sum n)
  (define (coprime? a)
	(= 1 (gcd a n)))
  (define (term x) x)
  (define (next x) (+ x 1))
  (filtered-accumulate coprime? * 1 term 1 next (- n 1)))

;(define cps coprime-sum)
