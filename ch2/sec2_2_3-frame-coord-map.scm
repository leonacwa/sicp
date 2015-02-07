;p92 frame-coord-map

(load "2_46-vect.scm")
(load "2_47-frame1.scm")

(define (frame-coord-map frame)
  (lambda (v)
	(add-vect
	  (origin-frame frame)
	  (add-vect (scale-vect (xcor-vect v)
							(edge1-frame frame))
				(scale-vect (ycor-vect v)
							(edge2-frame frame))))))

