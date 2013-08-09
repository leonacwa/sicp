; 无穷连分式，迭代版本

(define (cont-frac n d k)
  (define (iter i result)
	(if (= i 1) 
	  result
	  (let ((next (- i 1)))
		(iter next
			  (/ (n next)
				 (+ (d next)
					result))))))
  (iter k (d k)))

