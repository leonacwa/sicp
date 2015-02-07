
(define (adjoin-set x set)
  (if (null? set)
	   (list x)
	   (let ((cur (car set))
			 (remain (cdr set)))
		 (cond ((= x cur) set)
			   ((< x cur)
				(cons x set))
			   ((> x cur)
				(cons cur
					  (adjoin-set x remain)))))))

