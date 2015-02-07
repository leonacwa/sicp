;ex 3.14 mystery

; 逆序
(define (mystery x)
  (define (loop x y)
	(if (null? x)
	  y
	  (let ((temp (cdr x)))
		(set-cdr! x y)
		(loop temp x))))
  (loop x '()))

