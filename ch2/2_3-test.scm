; test for 2.3 rectangle

;(load "2_3-rectangle.scm")
(load "2_3-rectangle2.scm")

(define (main)
  (let ((r (make-rectangle (make-point 0 4) (make-point 2 0))))
	(display (area-rectangle r))
	(newline)
	(display (perimeter-rectangle r))
	(newline)
	))

(main)
