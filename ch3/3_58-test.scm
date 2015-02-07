
(load "3_58-expand.scm")
(load "s3_5-display-stream.scm")

(define s1 (expand 1 7 10))
(define s2 (expand 3 8 10))

;(display-stream s1)

(display-stream-from-to s1 0 5) (newline)
(display-stream-from-to s2 0 5) (newline)

