;test 2.31

(load "2_31-tree-map.scm")

(define tree (list 1 (list 2 (list 3 4) 5) (list 6 7)))

(display (square-tree tree))
(newline)
