;p94 transform-painter

(load "sec2_2_3-frame-coord-map.scm")

(define (transform-painter painter origin corner1 corner2)
  (lambda (frame)
	(let ((m (frame-coord-map frame)))
	  (let ((new-origin (m origin)))
		(painter 
		  (make-frame new-origin
					  (sub-vect (m corner1) new-origin)
					  (sub-vect (m corner2) new-origin)))))))
