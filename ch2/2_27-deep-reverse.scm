;ex 2.27 deep-reverse

(define nil '())

(define (deep-reverse li) ; 二叉树的情况
  (cond
	((null? li) nil)
	((not (pair? li)) li)
	(else (list (deep-reverse (cadr li)) (deep-reverse (car li))))))

(define (tree-reverse tree)
  (define (iter tree result)
	(if (null? tree)
	  result
	  (iter (cdr tree)
			(cons (if (pair? (car tree))
					(tree-reverse (car tree))
					(car tree))
				  result))))
  (iter tree '()))

