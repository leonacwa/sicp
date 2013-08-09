;不动点的计算2, 打印计算中产生的近似值序列

(define tolerance 0.000001)

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
	(< (abs (- v1 v2)) tolerance))
  (define (try guess step)
	(display-info guess step)
	(let ((next (f guess)))
	  (if (close-enough? guess next)
		next
		(try next (+ step 1)))))
  (define (display-info guess step)
	(display "Step: ")
	(display step)
	(display " ")
	(display "Guess: ")
	(display guess)
	(newline))
  (try first-guess 0))

