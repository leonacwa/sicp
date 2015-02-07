;ex 3.5 estimate-integral


(load "s3_1_2-monte-carlo.scm")
(load "s3_1_2-random-in-range.scm")

(define (square x)
  (* x x))

(define (estimate-integral P x1 x2 y1 y2 trials)
  (define (integral-test)
	(let ((x (random-in-range (exact->inexact x1) x2))
		  (y (random-in-range (exact->inexact y1) y2)))
	  (P x y)))

  (let ((area (* (- x2 x1) (- y2 y1))))
	(* (exact->inexact area) (monte-carlo trials integral-test))))

(define (get-pi trials)
  (define (in-cycle x y)
	(<= (+ (square (- x 5))
		   (square (- y 7)))
		(square 3)))
  (/ (estimate-integral in-cycle 2 8 4 10 trials)
	 (square 3)))

