;ex 3.23 deque

(define (make-node value prev next)
  (list value prev next))

(define (node-value node)
  (car node))

(define (node-prev node)
  (cadr node))

(define (node-next node)
  (caddr node))

(define (set-node-value! node value)
  (set-car! node value))

(define (set-node-prev! node prev)
  (set-car! (cdr node) prev))

(define (set-node-next! node next)
  (set-car! (cddr node) next))

(define (make-deque)
  (cons '() '()))

(define (set-front-ptr! deque node)
  (set-car! deque node))

(define (set-rear-ptr! deque node)
  (set-cdr! deque node))

(define (front-ptr deque)
  (car deque))

(define (rear-ptr deque)
  (cdr deque))

(define (empty-deque? deque)
  (null? (front-ptr deque)))

(define (set-front-ptr! deque node)
  (set-car! deque node))

(define (set-rear-ptr! deque node)
  (set-cdr! deque node))

(define (front-deque deque)
  (if (empty-deque? deque)
	   (error "FRONT called with an empty deque" deque)
	   ;else
	   (node-value (front-ptr deque))))

(define (rear-deque deque)
  (if (empty-deque? deque)
	   (error "REAR called with an empty deque" deque)
	   ;else
	   (node-value (rear-ptr deque))))

(define (front-insert-deque! deque value)
  (let ((new-node (make-node value '() (front-ptr deque))))
	(cond ((empty-deque? deque)
		   (set-front-ptr! deque new-node)
		   (set-rear-ptr! deque new-node)
		   deque)
		  (else
			(set-node-prev! (front-ptr deque) new-node)
			(set-front-ptr! deque new-node)
			deque))))

(define (rear-insert-deque! deque value)
  (let ((new-node (make-node value (rear-ptr deque) '())))
	(cond ((empty-deque? deque)
		   (set-front-ptr! deque new-node)
		   (set-rear-ptr! deque new-node)
		   deque)
		  (else
			(set-node-next! (rear-ptr deque) new-node)
			(set-rear-ptr! deque new-node)
			deque))))

(define (front-delete-deque! deque)
  (cond ((empty-deque? deque)
		 (error "FRONT-DELETE! called with an empty deque" deque))
		(else
		  (set-front-ptr! deque (node-next (front-ptr deque)))
		  (if (null? (front-ptr deque))
			(set-rear-ptr! deque '())
			;else
			(set-node-prev! (front-ptr deque) '()))
		  deque)))

(define (rear-delete-deque! deque)
  (cond ((empty-deque? deque)
		 (error "REAR-DELETE! called with an empty deque" deque))
		(else
		  (set-rear-ptr! deque (node-prev (rear-ptr deque)))
		  (if (null? (rear-ptr deque))
			(set-front-ptr! deque '())
			;else
			(set-node-next! (rear-ptr deque) '()))
		  deque)))

(define (print-deque deque)
  (define (print-iter node)
	(if (null? node)
	  'ok
	  ;else
	  (begin
		(display (node-value node))
		(display " ")
		(print-iter (node-next node)))))
  (display "(")
  (print-iter (front-ptr deque))
  (display ")\n"))

