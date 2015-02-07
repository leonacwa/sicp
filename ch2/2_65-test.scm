
(load "s2_3_3-tree.scm")
(load "2_63-tree-list.scm")
(load "2_64-list2tree.scm")
(load "2_65.scm")
(load "data2_16.scm")

(define tree_a
  (make-tree 17
			 (make-tree 13
						(make-leaf 11)
						(make-leaf 15))
			 (make-tree 19
						'()
						(make-leaf 21))))


(define (work tree)
  (print-tree tree)
  (newline)
  (display (tree->list-2 tree))
  (newline))

(work (union-set tree1 tree_a))

(work (intersection-set tree1 tree2))
