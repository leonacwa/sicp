;ex 3.22 queue dispatch

(define (make-queue)
  (let ((front-ptr '())
		(rear-ptr '()))

	(define (set-front-ptr! item) (set! front-ptr item))

	(define (set-rear-ptr! item) (set! rear-ptr item))

	(define (empty-queue?) (null? front-ptr))

	(define (front-queue)
	  (if (empty-queue? queue)
		(error "FRONT called with an empty queue" front-ptr rear-ptr)
		(car front-ptr)))

	(define (insert-queue! item)
	  (let ((new-pair (cons item '())))
		(cond ((empty-queue?)
			   (set-front-ptr! new-pair)
			   (set-rear-ptr! new-pair)
			   'ok)
			  (else
				(set-cdr! rear-ptr new-pair)
				(set-rear-ptr! new-pair)
				'ok))))

	(define (delete-queue!)
	  (cond ((empty-queue?)
			 (error "DELETE! called with an empty queue" front-ptr rear-ptr))
			(else
			  (set-front-ptr! (cdr front-ptr))
			  'ok)))

	(define (print-queue)
	  (display front-ptr))

	(define (dispatch m)
	  (cond ((eq? m 'empty-queue?) empty-queue?)
			((eq? m 'front-queue) front-queue)
			((eq? m 'insert-queue!) insert-queue!)
			((eq? m 'delete-queue!) delete-queue!)
			((eq? m 'print-queue) print-queue)
			(else
			  (error "DISPATCH error op " m))))

	dispatch))

