
(load "sec2_2_3-flatmap.scm")
(load "sec2_2_3-enumerate-interval.scm")

(define nil '())
(define empty-board '())

(define (adjoin-position new-row k rest-of-queens)
  (cons new-row rest-of-queens))

(define (safe? k positions)
  (define (iter-check p x positions)
	(if (null? positions)
	  #t
	  (let ((y (car positions)))
		(if (or (= p y) (= p (- y x)) (= p (+ y x)))
		  #f
		  (iter-check p (+ x 1) (cdr positions))))))
  (iter-check (car positions) 1 (cdr positions)))

(define (queens board-size)
  (define (queen-cols k)
	(if (= k 0)
	  (list empty-board)
	  (filter
		(lambda (positions) (safe? k positions))
		(flatmap
		  (lambda (rest-of-queens)
			(map (lambda (new-row)
				   (adjoin-position new-row k rest-of-queens))
				 (enumerate-interval 1 board-size)))
		  (queen-cols (- k 1))))))
  (queen-cols board-size))

