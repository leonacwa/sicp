(load "2_46-vect.scm")

(define v1 (make-vect 0 1))
(define v2 (make-vect 1 1))

(print-vect v1)
(newline)
(print-vect v2)
(newline)

(print-vect (add-vect v1 v2))
(newline)

(print-vect (sub-vect v1 v2))
(newline)

(print-vect (scale-vect 3 v2))
(newline)
