;ex 2.22 square-list

(define nil '())

(define (square x) (* x x))

(define (square-list items)
  (define (iter things answer)
	(if (null? things)
	  answer
	  (iter (cdr things)
			;(cons answer ; 这样写会形成 (list_data . num) 形式的数，不是list，把cons换成append
				;  (square (car things))))))
			(append answer ; 正确写法
				  (list (square (car things)))))))
  (iter items nil))

(display (square-list (list 1 2 3 4)))
(newline)
