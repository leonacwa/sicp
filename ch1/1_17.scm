(define (double a)
  (+ a a))

(define (halve a)
  (if (odd? a) (/ (- a 1) 2)
	(/ a 2)))

(define (mul a b)
  (cond ((= b 0) 0)
		((odd? b) (+ a (mul a (- b 1))))
		(else (mul (double a) (halve b)))))

