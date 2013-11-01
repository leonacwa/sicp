
(load "sec2_2_3-flatmap.scm")
(load "sec2_2_3-enumerate-interval.scm")

(define (unique-pairs n)
  (flatmap (lambda (i)
			 (map (lambda (j) (list i j))
				  (enumerate-interval 1 (- i 1))))
		   (enumerate-interval 1 n)))

