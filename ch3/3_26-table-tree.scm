;ex 3.26 用tree表示table

;tree

(define (any->string var)
  (cond ((symbol? var) (symbol->string var))
		((string? var) var)
		((number? var) (number->string var))
		(else var)))

(define (tree-key-compare a b)
  (cond ((string=? a b) 0)
		((string<? a b) -1)
		((string>? a b) 1)))

(define (make-empty-tree)
  (list "()" '() '() '())) ; 用空list表示空key

(define (make-tree key value left right)
  (list key value left right))

(define (empty-tree? tree)
  (null? tree))

(define (tree-key tree)
  (car tree))

(define (tree-value tree)
  (cadr tree))

(define (tree-left-branch tree)
  (caddr tree))

(define (tree-right-branch tree)
  (cadddr tree))

(define (set-tree-key! tree key)
  (set-car! tree key)
  tree)

(define (set-tree-value! tree value)
  (set-car! (cdr tree) value)
  tree)

(define (set-tree-left-branch! tree left)
  (set-car! (cddr tree) left)
  tree)

(define (set-tree-right-branch! tree right)
  (set-car! (cdddr tree) right)
  tree)

(define (tree-insert! tree key value)
  (define (iner-insert! tree key value)
	(if (empty-tree? tree)
	  (set! tree (make-tree key value '() '()))
	  ;else
	  (let ((compare-result (tree-key-compare (tree-key tree) key)))
		(cond ((= compare-result 0)
			   (set-tree-value! tree value))
			  ((> compare-result 0)
			   (set-tree-left-branch! tree (tree-insert! (tree-left-branch tree) key value)))
			  ((< compare-result 0)
			   (set-tree-right-branch! tree (tree-insert! (tree-right-branch tree) key value))))))
	tree)
  (iner-insert! tree (any->string key) value))

(define (tree-search tree key)
  (define (iner-search tree key)
	(if (empty-tree? tree)
	  #f
	  ;else
	  (let ((compare-result (tree-key-compare (tree-key tree) key)))
		(cond ((= compare-result 0)
			   tree)
			  ((> compare-result 0)
			   (tree-search (tree-left-branch tree) key))
			  ((< compare-result 0)
			   (tree-search (tree-right-branch tree) key))))))
  (iner-search tree (any->string key)))

; table

(define (lookup key table)
  (let ((record (tree-search (cdr table) key)))
	(if record
	  (tree-value record)
	  #f)))

(define (insert! key value table)
  (tree-insert! (cdr table) key value))

(define (make-table)
  (cons '*table* (make-empty-tree)))
