;ex 3.53

(load "s3_5-add-streams.scm")
(load "s3_5-display-stream.scm")

(define s (cons-stream 1 (add-streams s s)))

(display-line (stream-car s))
(display-line (stream-car (stream-cdr s)))
(display-line (stream-car (stream-cdr (stream-cdr s))))
(display-line (stream-car (stream-cdr (stream-cdr (stream-cdr s)))))
(display-line (stream-car (stream-cdr (stream-cdr (stream-cdr (stream-cdr s))))))

;(display-stream s)

