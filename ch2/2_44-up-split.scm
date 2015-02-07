;ex 2.44 up-split
; 没有相关的函数，只能是表示，无法运行

(define (up-split painter n)
  (if (= n 0)
	painter
	(let ((smaller (up-split painter (- n 1))))
	  (below painter (beside smaller smaller)))))

