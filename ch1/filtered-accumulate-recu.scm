; p40, ex1.33 过滤器过程 递归版本
(define (filtered-accumulate filtered? combiner null-value term a next b)
  (if (> a b)
	null-value
	(if (filtered? a)
	  (combiner (term a) (filtered-accumulate filtered? combiner null-value term (next a) next b))
	  (filtered-accumulate filtered? combiner null-value term (next a) next b))))

