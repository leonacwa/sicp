
(load "s3_5-interleave.scm")
(load "s3_5-pairs.scm")
(load "s3_5-integers.scm")
(load "s3_5-display-stream.scm")
(load "3_67-stream-n.scm")
(load "3_69-triples.scm")

(define (square x)
  (* x x))

(define (gogu-stream ts)
  (define (enough? t)
	(let ((a (car t))
		  (b (cadr t))
		  (c (caddr t)))
	  (= (+ (square a) (square b)) (square c))))

  (define (inner-iter ts)
	(if (stream-null? ts)
	  the-empty-stream
	  (if (enough? (stream-car ts))
		(cons-stream (stream-car ts)
					 (inner-iter (stream-cdr ts)))
		(inner-iter (stream-cdr ts)))))
  (inner-iter ts))

(define ts (triples integers integers integers))
(define gs (gogu-stream ts))

(display-stream (stream-n 5 ts))(newline)
;(display-stream (stream-n 4 gs))

