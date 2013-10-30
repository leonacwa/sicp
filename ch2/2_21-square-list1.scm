;ex 2.21 square-list

(define nil '())

(define (square x) (* x x))

(define (square-list items)
  (if (null? items)
	nil
	(cons (square (car items)) (square-list (cdr items)))))

