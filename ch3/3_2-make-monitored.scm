;ex 3.2 make-monitored

(define (make-monitored f)
	(let ((count 0))
	  (lambda (input)
		(cond ((eq? input 'how-many-calls?) count)
			  ((eq? input 'reset-count) (set! count 0))
			  (else
				(set! count (+ count 1))
				(f input))))))

