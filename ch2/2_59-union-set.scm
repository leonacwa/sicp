;ex2-59 union-set

(define (union-set set1 set2)
  (define (iter set1 set2 result)
	(cond ((null? set1) result)
		  ((element-of-set? (car set1) set2)
		   (iter (cdr set1) set2 result))
		  (else 
			(iter (cdr set1) set2 (cons (car set1) result)))))
  (iter set1 set2 set2))

