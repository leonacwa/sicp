
(load "s3_5-scale-stream.scm")
(load "s3_5-integers.scm")
(load "3_70-merge-weighted.scm")
(load "3_70-weighted-pairs.scm")
(load "s3_5-display-stream.scm")
(load "3_67-stream-n.scm")

(define (weight-i+j p)
  (let ((i (car p))
		(j (cadr p)))
	(let ((sum (+ (* 2 i) (* 2 j) (* 5 i j))))
	  (+ (* sum sum)
		 (* i j)))))

(define s235 (merge-weighted
			   (scale-stream integers 2)
			   (merge-weighted (scale-stream integers 3)
							   (scale-stream integers 5)
							   (lambda (x) x))
			   (lambda (x) x)))

(define s (weighted-pairs s235 s235	weight-i+j))

(display-stream (stream-n 20 s))

