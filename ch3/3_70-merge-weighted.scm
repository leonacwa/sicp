; ex 3.70 weighted-pairs
; merge-weighted
; 按照权重合并两个流

(define (merge-weighted s1 s2 weight)
  (cond ((stream-null? s1) s2)
		((stream-null? s2) s1)
		(else
		  (let ((s1car (stream-car s1))
				(s2car (stream-car s2)))
			(let ((w1 (weight s1car))
				  (w2 (weight s2car)))
			  (cond ((< w1 w2)
					 (cons-stream s1car (merge-weighted (stream-cdr s1) s2 weight)))
					((> w1 w2)
					 (cons-stream s2car (merge-weighted s1 (stream-cdr s2) weight)))
					(else
					  (cons-stream s1car
								   (merge-weighted (stream-cdr s1) (stream-cdr s2) weight)))))))))
