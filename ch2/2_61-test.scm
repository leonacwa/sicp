;ex 2.61 adjoin-set test

(load "s2_3_3-set2.scm")
(load "2_61-adjoin-set.scm")

(define set1 (list 1 2 3 4 5))

(define set2 (list 3 4 5 6 7))

(display (element-of-set? 2 set1))
(newline)
(display (element-of-set? 0 set1))
(newline)

(print-set (adjoin-set 0 set1))
(print-set (adjoin-set 0 set2))
(print-set (adjoin-set 10 set2))

(print-set (intersetion-set set1 set2))
