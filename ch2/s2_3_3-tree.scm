;sector 2.3.3 set
; 树的表示

(define true #t)
(define false #f)

(define (entry tree) (car tree))

(define (left-branch tree) (cadr tree))

(define (right-branch tree) (caddr tree))

(define (make-tree entry left right)
  (list entry left right))

(define (make-leaf entry)
  (list entry '() '()))

(define (element-of-set? x set)
  (cond ((null? set) false)
		((= x (entry set)) true)
		((< x (entry set))
		 (element-of-set? x (left-branch set)))
		((> x (entry set))
		 (element-of-set? x (right-branch set)))))

(define (adjoin-set x set)
  (cond ((null? set) (make-tree x '() '()))
		((= x (entry  set)) set)
		((< x (entry set))
		 (make-tree (entry set)
					(adjoin-set x (left-branch set))
					(right-branch set)))
		((> x (entry set))
		 (make-tree (entry set)
					(left-branch set)
					(adjoin-set (right-branch set))))))

(define (print-tree tree)
  (define (print-space n)
	(if (<= n 0)
	  true
	  (begin
		(display " ")
		(print-space (- n 1)))))

  (define (digit-length n)
	(let ((ns (abs n)))
	  (+ (if (< n 0) 1 0)
		 (cond 
		   ((< ns 10) 1)
		   ((< ns 100) 2)
		   ((< ns 1000) 3)
		   ((< ns 10000) 4)
		   (else 5)))))

  (define (print-iter tree level tag)
	(if (null? tree)
	  true
	  (let ((width (- (* level 5) (digit-length (entry tree))))
			(next-level (+ level 1)))
		(print-space width)
		(display (entry tree))
		(display ":")
		(display tag)
		(newline)
		(print-iter (left-branch tree) next-level 'left)
		(print-iter (right-branch tree) next-level 'right))))

  (print-iter tree 1 'root))
