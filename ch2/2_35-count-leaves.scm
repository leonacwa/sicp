;ex 2.35 count-leaves

(load "sec2_2_3-accumulate.scm")

(define (count-leaves t)
  (accumulate +
			  0
			  (map (lambda (sub)
					 (if (pair? sub)
					   (count-leaves sub)
					   1))
				   t)))

