; 过程作为返回参数
(load "average.scm")
(define (average-damp f)
  (lambda (x)
	(average x (f x))))
