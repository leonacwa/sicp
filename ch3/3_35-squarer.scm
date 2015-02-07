;ex 3.35 squarer

(define (squarer a b)
  (define (square x)
	(* x x))
  (define (process-new-value)
	(if (has-value? b)
	  (if (< (get-value b) 0)
		(error "square less than 0 -- SQUARER" (get-value b))
		;else
		(set-value! a (sqrt (get-value b)) me))
	  ;else
	  (if (has-value? a)
		(set-value! b (square (get-value a)) me))))
  (define (process-forget-value)
	(forget-value! a me)
	(forget-value! b me)
	(process-new-value))
  (define (me request)
	(cond ((eq? request 'I-have-a-value)
		   (process-new-value))
		  ((eq? request 'I-lost-my-value)
		   (process-forget-value))
		  (else (error "Unknown request -- SQUARER" request))))
  (connect a me)
  (connect b me)
  me)

