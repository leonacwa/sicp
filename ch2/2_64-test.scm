;ex 2.64 test

(load "s2_3_3-tree.scm")
(load "2_64-list2tree.scm")

(define a '(1 3 5 7 9 11))

(print-tree 
  (list->tree a))
(newline)
