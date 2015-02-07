
(load "3_23-deque.scm")

(define q1 (make-deque))

(front-insert-deque! q1 3)
(front-insert-deque! q1 2)
(front-insert-deque! q1 1)


(rear-insert-deque! q1 4)
(rear-insert-deque! q1 5)
(rear-insert-deque! q1 6)

;(display (empty-deque? q1)) (newline)
;(display (front-deque q1)) (newline)
(display (rear-deque q1)) (newline)
;(display (rear-ptr q1)) (newline)
;(display q1) (newline)
(print-deque q1)

(front-delete-deque! q1)
(print-deque q1)

(rear-delete-deque! q1)
(print-deque q1)

