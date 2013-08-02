;p40 ex1.31
;返回给定范围中各点某个函数的乘积
;递归写法
(define (product a b f next)
  (if (> a b)
	1
	(* (f a) (product (next a) b f next))))

