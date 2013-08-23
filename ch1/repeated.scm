
(load "compose.scm")

(define (repeated f n)
  (if (< n 1) (error "n must be greater than 0\n")
	(lambda (x)
	  (define (iter count result)
		(if (> count n)
		  result
		  (iter (+ count 1) (f result))))
	  (iter 1 x))))

