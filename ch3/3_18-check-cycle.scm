;ex 3.18 check-cycle

(define (check-cycle x)
  (define (iter a b)
	(cond ((or (null? a) (null? b)) #f)
		  ((eq? a b) #t)
		  (else (iter (cdr a) (cddr b)))))

  (if (or (null? x) (null? (cdr x)))
	#f
	(iter x (cddr x))))

