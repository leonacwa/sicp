;ex 2.28 fringe

(define (fringe tree)
  (cond ((null? tree) tree)
		((not (pair? tree)) (list tree))
		(else (append (fringe (car tree)) (fringe (cdr tree))))))

