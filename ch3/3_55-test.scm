
(load "s3_5-integers.scm")
(load "3_55-partial-sums.scm")
(load "s3_5-display-stream.scm")

(define s (partial-sums integers))

(display-line (stream-car s))
(display-line (stream-car (stream-cdr s)))
(display-line (stream-car (stream-cdr (stream-cdr s))))
(display-line (stream-car (stream-cdr (stream-cdr (stream-cdr s)))))
(display-line (stream-car (stream-cdr (stream-cdr (stream-cdr (stream-cdr s))))))

