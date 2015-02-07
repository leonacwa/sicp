
(load "s3_5-add-streams.scm")
(load "s3_5-integers.scm")
(load "s3_5-scale-stream.scm")
(load "s3_5-integral.scm")
(load "3_73-RC.scm")
(load "s3_5-display-stream.scm")
(load "3_67-stream-n.scm")

(define RC1 (RC 5 1 0.5))

(define vs (RC1 0.5 (scale-stream integers 0.5)))

(display-stream (stream-n 20 vs))

