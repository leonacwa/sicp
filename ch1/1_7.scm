(define (sqrt-iter guess x)
	(if (good-enough? guess (improve guess x) )
		guess
		(sqrt-iter (improve guess x)
					x)))

(define (improve guess x)
	(average guess (/ x guess)))

(define (average x y)
		(/ (+ x y) 2))

(define (good-enough? guess new-guess)
  (< (abs (- guess new-guess))
	 0.0001))

(define (mysqrt x)
	(sqrt-iter 1.0 x))

(display (mysqrt 34))
(display (mysqrt 0.00009))
(display (sqrt 0.00009))

