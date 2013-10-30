;ex 2.23 for-each

(define (for-each func li)
  (if (null? li)
	#t
	(begin
	  (func (car li))
	  (for-each func (cdr li)))))

