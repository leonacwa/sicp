; tan x 连分数

(load "cont-frac-iter.scm")

(define (square x)
  (* x x))

(define (tan-cf x k)
  (define (n i)
	(if (= i 1.0)
	  x
	  (- (square x))))
  (define (d i)
	(- (* 2.0 i) 1.0))
  (cont-frac n d k))

