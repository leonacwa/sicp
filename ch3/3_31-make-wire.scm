; ex 3.31 修改make-wire中的内部过程 accept-action-procedure!，去掉其中执行 (proc)

;依赖 agenda  after-delay

(define (make-wire)

  (let ((signal-value 0) (action-procedures '()))

	(define (set-my-signal! new-value)
	  (if (not (= signal-value new-value))
		(begin (set! signal-value new-value)
			   (call-each action-procedures))
		'done))

	(define (accept-action-procedure! proc)
	  (set! action-procedures (cons proc action-procedures)))
		;(proc)) ; 

	(define (dispatch m)
	  (cond ((eq? m 'get-signal) signal-value)
			((eq? m 'set-signal!) set-my-signal!)
			((eq? m 'add-action!) accept-action-procedure!)
			(else (error "Unknown Opperation -- WIRE" m))))
	dispatch))

(define (call-each procedures)
  (if (null? procedures)
	'done
	;else
	(begin
	  ((car procedures))
	  (call-each (cdr procedures)))))

(define (get-signal wire)
  (wire 'get-signal))

(define (set-signal! wire new-value)
  ((wire 'set-signal!) new-value))

(define (add-action! wire action-procedure)
  ((wire 'add-action!) action-procedure))
