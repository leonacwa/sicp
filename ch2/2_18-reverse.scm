;ex2.18 reverse

(define (myreverse li)
  (define (iter li result)
	(if (null? li)
	  result
	  (iter (cdr li) (cons (car li) result))))
  (iter li '()))


