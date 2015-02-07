;ex2.65 基于二叉树的 union-set 和 intersection-set 的实现

(define tree->list tree->list-2)

(define (union-list set1 set2)
  (cond ((null? set1) set2)
		((null? set2) set1)
		(else
		  (let ((e1 (car set1))
				(e2 (car set2))
				(rs1 (cdr set1))
				(rs2 (cdr set2)))
			(cond ((= e1 e2)
				   (cons e1 (union-list rs1 rs2)))
				  ((< e1 e2)
				   (cons e1 (union-list rs1 set2)))
				  ((> e1 e2)
				   (cons e2 (union-list set1 rs2))))))))

(define (intersetion-list set1 set2)
  (if (or (null? set1) (null? set2))
	'()
	(let ((x1 (car set1)) (x2 (car set2)))
	  (cond ((= x1 x2)
			 (cons x1 (intersetion-list (cdr set1)
									   (cdr set2))))
			((< x1 x2)
			 (intersetion-list (cdr set1) set2))
			((> x1 x2)
			 (intersetion-list set1 (cdr set2)))))))

(define (union-set set1 set2)
  (let ((ls1 (tree->list set1))
		(ls2 (tree->list set2)))
	(let ((ls (union-list ls1 ls2)))
	  (list->tree ls))))

(define (intersection-set set1 set2)
  (let ((ls1 (tree->list set1))
		(ls2 (tree->list set2)))
	(let ((ls (intersetion-list ls1 ls2)))
	  (list->tree ls))))
