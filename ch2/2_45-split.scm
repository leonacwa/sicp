;ex 2.45 split
; 

(define (split op1 op2)
  (define (iter painter n)
	(if (= n 0)
	  painter
	  (let ((smaller (iter painter (- n 1))))
		(op1 painter (op2 smaller smaller)))))
  iter)
