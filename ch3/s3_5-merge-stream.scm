; sector 3.5 stream
; merge-stream

(define (merge-stream s1 s2)
  (cond ((stream-null? s1) s2)
		((stream-null? s2) s1)
		(else
		  (let ((s1car (stream-car s1))
				(s2car (stream-car s2)))
			(cond ((< s1car s2car)
				   (cons-stream s1car (merge-stream (stream-cdr s1) s2)))
				  ((> s1car s2car)
				   (cons-stream s2car (merge-stream s1 (stream-cdr s2))))
				  (else
					(cons-stream s1car
								 (merge-stream (stream-cdr s1) (stream-cdr s2)))))))))

