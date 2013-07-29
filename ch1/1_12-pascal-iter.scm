(define (fact n)
  (define (fact-iter x y)
	(if (> x n)
	  y
	  (fact-iter (+ x 1) (* y x))))
  (fact-iter 1 1))

(define (pascal row col)
  (cond ((or (> col row) (< col 0) (< row 0))
		 (error "invalid row col\n"))
		((or (= 0 col) (= col row)) 1)
		(else (/ (fact row)
				 (fact (- row col))
				 (fact col)))))

