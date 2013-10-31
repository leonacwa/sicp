
(load "2_35-count-leaves.scm")

(define l1 (list (list 1 2) (list 3 4)))
(define l2 (list 1 (list 2 3) (list 4 (list 5 6))))

(display (count-leaves l1))
(newline)
(display (count-leaves l2))
(newline)

