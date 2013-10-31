;ex 2.31 tree-map

(define (tree-map func tree)
  (define (map-func tree)
	(if (pair? tree)
	  (tree-map func tree)
	  (func tree)))
  (map map-func tree))

(define (square x)
  (* x x))

(define (square-tree tree)  (tree-map square tree))

