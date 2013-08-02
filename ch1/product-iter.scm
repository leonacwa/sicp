;p40 ex1.31
;返回给定范围中各点某个函数的乘积
;迭代的写法
(define (product a b f next)
  (define (iter a result)
	(if (> a b)
	  result
	  (iter (next a) (* result (f a)))))
  (iter a 1))

