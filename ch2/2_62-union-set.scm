;ex2.62 union-set
; 有序版

(define (union-set set1 set2)
  (cond ((null? set1) set2)
		((null? set2) set1)
		(else
		  (let ((e1 (car set1))
				(e2 (car set2))
				(rs1 (cdr set1))
				(rs2 (cdr set2)))
			(cond ((= e1 e2)
				   (cons e1 (union-set rs1 rs2)))
				  ((< e1 e2)
				   (cons e1 (union-set rs1 set2)))
				  ((> e1 e2)
				   (cons e2 (union-set set1 rs2))))))))

