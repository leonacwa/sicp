; p40, ex1.33 过滤器过程 迭代
(define (filtered-accumulate filtered? combiner null-value term a next b)
  (define (iter a result)
	(if (> a b)
	  result
	  (if (filtered? a)
		(iter (next a) (combiner result (term a)))
		(iter (next a) result))))
  (iter a null-value))

