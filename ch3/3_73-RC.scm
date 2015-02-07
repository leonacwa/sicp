
(define (RC R C dt)
  (lambda (v0 i)
	(add-streams (scale-stream i R)
				 (stream-cdr (integral (scale-stream i (/ 1.0 C)) v0 dt)))))

