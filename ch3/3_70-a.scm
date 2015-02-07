
(load "s3_5-integers.scm")
(load "3_70-merge-weighted.scm")
(load "3_70-weighted-pairs.scm")
(load "s3_5-display-stream.scm")
(load "3_67-stream-n.scm")

(define (weight-i+j p)
  (let ((i (car p))
		(j (cadr p)))
	(+ (* (+ i j)
		  (+ i j))
	   (* i j))))

(define s (weighted-pairs integers integers weight-i+j))

(display-stream (stream-n 20 s))

