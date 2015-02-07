
(load "s3_5-scale-stream.scm")
(load "s3_5-integers.scm")
(load "3_70-merge-weighted.scm")
(load "3_70-weighted-pairs.scm")
(load "s3_5-display-stream.scm")
(load "3_67-stream-n.scm")

(define (double-weight p)
  (let ((i (car p))
		(j (cadr p)))
	(let ((sum (+ (* i i)
				  (* j j))))
	  (+ (* sum sum)
		 (* i j)))))

(define (d-weight p)
  (let ((i (car p))
		(j (cadr p)))
	(+ (* i i)
	   (* j j))))

(define (double-square-sum-stream s)
  (let ((p1 (stream-car s))
		(p2 (stream-car (stream-cdr s)))
		(p3 (stream-car (stream-cdr (stream-cdr s)))))
	(let ((w1 (d-weight p1))
		  (w2 (d-weight p2))
		  (w3 (d-weight p3)))
	  (if (= w1 w2 w3)
		(cons-stream (list w1 p1 p2 p3)
					 (double-square-sum-stream (stream-cdr (stream-cdr (stream-cdr s)))))
		(double-square-sum-stream (stream-cdr s))))))

(define double-stream (weighted-pairs integers integers double-weight))

(define s (double-square-sum-stream double-stream))

(display-stream (stream-n 25 s))

