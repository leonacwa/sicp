(define (pascal row col)
  (cond ((or (> col row) (< col 0) (< row 0))
		 (error "invalid row col\n"))
		((or (= 0 col) (= col row)) 1)
		(else (+ (pascal (- row 1) col)
				 (pascal (- row 1) (- col 1))))))

(pascal 2 1)
