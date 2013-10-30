;test for ex 2.28

(load "2_28-fringe.scm")

(define x (list (list 1 2) (list 3 4)))

(display (fringe x))
(newline)

(display (fringe (list x x)))
(newline)
