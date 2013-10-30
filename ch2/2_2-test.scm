; test for ex 2.2 segment

(load "2_2-segment.scm")

(define (main)
  (let (
		(s (make-segment (make-point 0 0) (make-point 3 3))))
	(print-point (start-segment s))
	(print-point (end-segment s))
	(print-point (midpoint-segment s))))

(main)

