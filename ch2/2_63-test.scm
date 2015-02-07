;2.63 test

(load "s2_3_3-tree.scm")
(load "2_63-tree-list.scm")
(load "data2_16.scm")

(define (print-list l)
  (display l)
  (newline))

(display "sample 1\n")
(print-list (tree->list-1 tree1))
(print-list (tree->list-2 tree1))

(display "sample 2\n")
(print-list (tree->list-1 tree2))
(print-list (tree->list-2 tree2))

(display "sample 3\n")
(print-list (tree->list-1 tree3))
(print-list (tree->list-2 tree3))

