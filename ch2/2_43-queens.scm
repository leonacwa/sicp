
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
		  (lambda (new-row)
			(map (lambda (rest-of-queens)
				   (adjoin-position new-row k rest-of-queens))
				 (queen-cols (- k 1))))
		  (enumerate-interval 1 board-size)))))
  (queen-cols board-size))

; 替换后的耗时
; 棋盘大小为b, n<=b, 如果n列耗时T(n)，则T(n) = b * T(n - 1), T(n - 1) = b * T(n - 2) ... ，应该是 b^b，但是考虑到时实际不会遍历到这些情况，时间执行时间短
