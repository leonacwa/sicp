; ex 3.64 stream-limit
; test
;

(load "s3_5-sqrt-stream.scm")
(load "3_64-stream-limit.scm")
(load "s3_5-display-stream.scm")

(define (sqrt x tolerance)
  (stream-limit (sqrt-stream x) tolerance))

(define s1 (sqrt 4 0.001))
(display-line s1)

(define s1 (sqrt 4 0.000001))
(display-line s1)

(define s2 (sqrt 3 0.001))
(display-line s2)

(define s2 (sqrt 3 0.000001))
(display-line s2)

