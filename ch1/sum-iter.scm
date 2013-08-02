; 只要载入其它文件后，再载入该文件，即可替换sum函数
(define (sum term a next b)
  (define (iter a result)
	(if (> a b)
	  result
	  (iter (next a) (+ result (term a)))))
  (iter a 0))

