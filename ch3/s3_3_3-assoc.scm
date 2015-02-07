;sector 3.3.3 table assoc
(define (assoc key records)
  (cond ((null? records) false)
		((equal? key (caar records)) (car records))
		(else (assoc key (cdr records)))))

