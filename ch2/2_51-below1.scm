;ex 2.51 below1

(define (below painter1 painter2)
  (let ((split-point (make-vect 0.0 0.5)))
	(let ((paint-down
			(transform-painter painter1
							   (make-vect 0.0 0.0)
							   (make-vect 1.0 0.0)
							   split-point))
		  (paint-up
			(transform-painter painter2
							   split-point
							   (make-vect 1.0 0.5)
							   (make-vect 0.0 1.0))))
	  (lambda (frame)
		(paint-up frame)
		(paint-down frame)))))

