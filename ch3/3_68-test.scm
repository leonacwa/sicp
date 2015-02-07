
(load "s3_5-integers.scm")
(load "s3_5-display-stream.scm")
(load "s3_5-interleave.scm")
(load "3_68-pairs.scm")
(load "3_67-stream-n.scm")

(define ps (pairs integers integers))

(define l (stream->list (stream-n 20 ps)))

(display l) (newline)

