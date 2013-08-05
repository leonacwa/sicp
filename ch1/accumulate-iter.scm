; p40 ex1.32 accumulate 迭代过程
(define (accumulate combiner null-value term a next b)
  (define (iter a result)
	(if (> a b)
	  result
	  (iter (next a) (combiner result (term a)))))
  (iter a null-value))

