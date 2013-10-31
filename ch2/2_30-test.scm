

(define tree (list 1 (list 2 (list 3 4) 5) (list 6 7)))

(load "2_30-square-tree_1.scm")

(display (square-tree tree))
(newline)

(load "2_30-square-tree_map.scm")

(display (square-tree tree))
(newline)

