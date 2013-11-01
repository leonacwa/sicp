
(load "sec2_2_3-flatmap.scm")
(load "sec2_2_3-enumerate-interval.scm")

(define nil '())
(define empty-board '())

(define (adjoin-position new-row k rest-of-queens)
  (cons new-row rest-of-queens))

(define (safe? k positions)

  ;(define (generate-positions-r x positions) ; 递归版本
	;(let ((d (- k x)))
	 ; (if (= x 0)
		;nil
		;(let ((p (car positions)))
		 ; (append (list p (- p d) (+ p d)) (generate-positions-r (- x 1) (cdr positions)))))))

  (define (generate-positions x positions) ; 迭代版本
	(define (iter-gp x positions result)
	  (if (= x 0)
		result
		(let ((d (- k x))
			  (p (car positions)))
		  (iter-gp (- x 1) (cdr positions) (append result (list p (- p d) (+ p d)))))))
	  (iter-gp x positions nil))

  (define (in-list? x seq)
	(cond ((null? seq) #f)
		  ((= x (car seq)) #t)
		  (else (in-list? x (cdr seq)))))

  (not (in-list? (car positions) (generate-positions (- k 1) (cdr positions)))))
 ; (let ((gp (generate-positions (- k 1) (cdr positions))))
	;(not (in-list? (car positions) gp))))

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

