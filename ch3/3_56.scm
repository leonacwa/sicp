;ex 3.56

(load "s3_5-scale-stream.scm")
(load "s3_5-merge-stream.scm")
(load "s3_5-display-stream.scm")

(define S (cons-stream 1 
					   (merge-stream (scale-stream S 2) 
									 (merge-stream (scale-stream S 3)
												   (scale-stream S 5)))))

(define s S)

(display-line (stream-car s))
(display-line (stream-car (stream-cdr s)))
(display-line (stream-car (stream-cdr (stream-cdr s))))
(display-line (stream-car (stream-cdr (stream-cdr (stream-cdr s)))))
(display-line (stream-car (stream-cdr (stream-cdr (stream-cdr (stream-cdr s))))))
(display-line (stream-car (stream-cdr (stream-cdr (stream-cdr (stream-cdr (stream-cdr s)))))))
(display-line (stream-car (stream-cdr (stream-cdr (stream-cdr (stream-cdr (stream-cdr (stream-cdr s))))))))

;(display-stream s)

