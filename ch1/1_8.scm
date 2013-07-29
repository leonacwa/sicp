(define (cube-root x)
  (cube-root-iter 1.0 x))

(define (cube-root-iter guess x)
  (if (good-enough2? guess x)
	guess
	(cube-root-iter (improve guess x)
					x)))

(define (good-enough? guess new-guess)
  (< (abs (- guess new-guess))
	 0.0000001))

(define (good-enough2? guess x)
  (< (abs (- x (cube guess)))
	 0.0000001))

(define (cube x)
  (* x x x))

(define (improve y x)
  (/ (+ (/ x (* y y))
		(* 2 y))
	 3))
(display (cube-root 29))
