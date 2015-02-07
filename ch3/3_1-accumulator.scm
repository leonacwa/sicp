;ex 3.1 make-accumulator

(define (make-accumulator accumulator)
  (lambda (amount)
	(set! accumulator ( + accumulator amount))
	accumulator))

