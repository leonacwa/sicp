; 无穷连分式，递归版本

;(load "cont-frac-recu.scm")
(load "cont-frac-iter.scm")

(define (golden-ratio k)
  (+ 1 
	 (cont-frac (lambda (i) 1.0)
				(lambda (i) 1.0)
				k)))

