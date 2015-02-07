;ex 3.33 averager

(define (averager a b c)
  (define (process-new-value)
	(cond ((and (has-value? a) (has-value? b))
		   (set-value! c
					   (/ (+ (get-value a) (get-value b)) 2)
					   me))
		  ((and (has-value? b) (has-value? c))
		   (set-value! a
					   (- (* (get-value c) 2) (get-value b))
					   me))
		  ((and (has-value? a) (has-value? c))
		   (set-value! b
					   (- (* (get-value c) 2) (get-value a))
					   me))))
  (define (process-forget-value)
	(forget-value! a me)
	(forget-value! b me)
	(forget-value! c me)
	(process-new-value))

  (define (me request)
	(cond ((eq? request 'I-have-a-value)
		   (process-new-value))
		  ((eq? request 'I-lost-my-value)
		   (process-forget-value))
		  (else (error "Unknown request -- AVERAGER" request))))
  (connect a me)
  (connect b me)
  (connect c me)
  me)

