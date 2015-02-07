
(load "s3_5-add-streams.scm")
(load "s3_5-integers.scm")
(load "s3_5-scale-stream.scm")
(load "s3_5-integral.scm")
(load "s3_5-display-stream.scm")
(load "3_67-stream-n.scm")

(define s (integral (scale-stream integers .5) 0 0.5))

(display-stream (stream-n 20 s))

