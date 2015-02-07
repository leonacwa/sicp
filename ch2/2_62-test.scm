;ex 2.61 adjoin-set test

(load "s2_3_3-set2.scm")
(load "2_62-union-set.scm")

(define set1 (list 1 2 3 4 5))

(define set2 (list 3 4 5 6 7))

(print-set (union-set set1 set2))

