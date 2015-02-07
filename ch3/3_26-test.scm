(load "3_26-table-tree.scm")


(define k1 'a)
(define k2 'h)
(define k3 1)
(define k4 4)

(define tr1 (make-empty-tree))

(tree-insert! tr1 k1 123)
(tree-insert! tr1 k2 "Huang Lilong")
(display tr1) (newline)
(display (tree-value (tree-search tr1 k1))) (newline)
(display "tree test end.\n")

(define t1 (make-table))

(insert! k1 123 t1)
(insert! k2 "Huang Lilong" t1)
(insert! k3 "one two three" t1)
(insert! k4 "one four" t1)

(display "insert end\n")
(display t1) (newline)

(display (lookup k1 t1)) (newline)
(display (lookup k2 t1)) (newline)
(display (lookup k3 t1)) (newline)
(display (lookup k4 t1)) (newline)

