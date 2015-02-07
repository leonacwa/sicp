;test for 2.47

(load "2_46-vect.scm")
;(load "2_47-frame1.scm")
(load "2_47-frame2.scm")

(define f (make-frame (make-vect 0.0 0.0) (make-vect 1.0 0.0) (make-vect 0.0 1.0)))

(print-vect (origin-frame f))
(newline)

(print-vect (edge1-frame f))
(newline)

(print-vect (edge2-frame f))
(newline)
