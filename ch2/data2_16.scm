;图2-16中的树

(load "s2_3_3-tree.scm")

; sample 1

(define tree1 
  (make-tree 7
			 (make-tree 3
						(make-leaf 1)
						(make-leaf 5))
			 (make-tree 9
						'()
						(make-leaf 11))))

(define tree2
  (make-tree 3
			 (make-leaf 1)
			 (make-tree 7
						(make-leaf 5)
						(make-tree 9
								   '()
								   (make-leaf 11)))))

(define tree3
  (make-tree 5
			 (make-tree 3
						(make-leaf 1)
						'())
			 (make-tree 9
						(make-leaf 7)
						(make-leaf 11))))

