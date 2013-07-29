(define (double a)
  (+ a a))

(define (halve a)
  (if (odd? a) (/ (- a 1) 2)
	(/ a 2)))

(define (mul a b)
  (define (mul-iter a b c)
	(cond ((= b 0) c)
		  ((odd? b) (mul-iter a (- b 1) (+ c a)))
		  (else (mul-iter (double a) (halve b) c))))
  (mul-iter a b 0))

