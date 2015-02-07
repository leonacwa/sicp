
(load "s3_5-integers.scm")
(load "s3_5-display-stream.scm")
(load "s3_5-interleave.scm")
(load "3_67-all-pairs.scm")
(load "3_67-stream-n.scm")

(define ps (all-pairs integers integers))

(define l (stream->list (stream-n 200 ps)))

(display l) (newline)
