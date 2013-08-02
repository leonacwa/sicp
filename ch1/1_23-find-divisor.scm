(define (next n)
  (if (= (remainder n 2) 0)
	(+ n 1)
	(+ n 2)))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
		((divides? test-divisor n) test-divisor)
		(else (find-divisor n (next test-divisor)))))

