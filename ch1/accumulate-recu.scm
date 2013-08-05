; p40 ex1.32 accumulate 递归过程
(define (accumulate combiner null-value term a next b)
  (if (> a b)
	null-value
	(combiner (term a) (accumulate combiner null-value term (next a) next b))))

