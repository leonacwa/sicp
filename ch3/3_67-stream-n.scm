
(define (stream-n n stream)
  (if (stream-null? stream)
	'()
	(if (> n 0)
	  (cons-stream (stream-car stream)
				   (stream-n (- n 1) (stream-cdr stream)))
	  '())))
