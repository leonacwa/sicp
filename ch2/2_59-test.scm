
(load "s2_3_3-set.scm")
(load "2_59-union-set.scm")

(define set1 (list 0 1 2 3 4 5))

(define set2 (list 3 4 5 6 7))

(display (element-of-set? 2 set1))
(newline)
(display (element-of-set? 0 set1))
(newline)

(print-set (adjoin-set 0 set1))

(print-set (intersetion-set set1 set2))

(print-set (union-set set1 set2))


