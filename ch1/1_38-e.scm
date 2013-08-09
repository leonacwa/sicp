;p47 ex1.38 e-2的脸分式展开

;(load "cont-frac-iter.scm")
(load "cont-frac-recu.scm")

(define (e k)
  (define (d i)
	(if (= 0 (remainder (+ i 1) 3))
	  (* 2
		 (/ (+ i 1)
			3))
	  1))

  (+ 2
	 (cont-frac (lambda (i) 1.0)
				d
				k)))

