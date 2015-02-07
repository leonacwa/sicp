;ex 3.54 factorials

(load "s3_5-integers.scm")
(load "s3_5-mul-streams.scm")
(load "s3_5-display-stream.scm")

(define factorials (cons-stream 1 (mul-streams factorials (stream-cdr integers))))

(define s factorials)

(display-line (stream-car s))
(display-line (stream-car (stream-cdr s)))
(display-line (stream-car (stream-cdr (stream-cdr s))))
(display-line (stream-car (stream-cdr (stream-cdr (stream-cdr s)))))
(display-line (stream-car (stream-cdr (stream-cdr (stream-cdr (stream-cdr s))))))

