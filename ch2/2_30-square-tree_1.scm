;ex 2.30 square-tree 1

(define (square-tree tree)
  (cond ((null? tree) tree)
		((not (pair? tree)) (* tree tree))
		(else (cons (square-tree (car tree))
					(square-tree (cdr tree))))))
