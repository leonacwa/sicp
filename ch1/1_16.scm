(define (fast-expt b n)
  (define (expt-iter a b n)
	(cond ((= n 0) a)
		  ((odd? n) (expt-iter (* a b) b (- n 1)))
		  (else (expt-iter a (* b b) (/ n 2)))))
  (expt-iter 1 b n))

