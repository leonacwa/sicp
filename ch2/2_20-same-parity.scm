;ex 2.20 same-parity

(define (same-parity a . li)
  (define (iter x li result)
	(if (null? li)
	  result
	  (if (= x (remainder (car li) 2))
		(iter x (cdr li) (append result (list (car li))))
		(iter x (cdr li) result))))
  (iter (remainder a 2) li (list a)))

(display (same-parity 1 2 3 4 5 6 7))
(newline)
(display (same-parity 2 3 4 5 6 7))
(newline)
