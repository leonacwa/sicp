
(load "2_37-vector_matrix.scm")

(define v (list 1 2 3 4))
(define w (list 5 6 7 8))
(define m1 (list (list 1 2 3 4) (list 4 5 6 6) (list 6 7 8 9)))
(define m2 (transpose m1))

(display (dot-product v w))
(newline)

(display (matrix-*-vector m1 v))
(newline)

(display (transpose m1))
(newline)

(display (matrix-*-matrix m1 m2))
(newline)
