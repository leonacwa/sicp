;ex 2.54 equal?

(define (my-equal? a b)
  (cond ((and (null? a) (null? b)) #t)
		((or (null? a) (null? b)) #f)
		((eq? (car a) (car b)) (my-equal? (cdr a) (cdr b)))
		(else #f)))

