;ex 3.4 make-account

(define (make-account balance password)
  (let ((incorrect-count 0))

	(define (withdraw amount)
	  (if (>= balance amount)
		(begin (set! balance (- balance amount))
			   balance)
		"Insufficient funds"))

	(define (deposit amount)
	  (set! balance (+ balance amount))
	  balance)

	(define (dispatch m)
	  (cond ((eq? m 'withdraw) withdraw)
			((eq? m 'deposit) deposit)
			(else (error "Unknown request -- MAKE-ACCOUNT"
						 m))))

	(define (account-error info)
	  (lambda (. args)
		info))

	(define (call-the-cops info)
	  (begin
		(display info)
		(newline)
		(account-error info)))

	(define (check check-password op)
	  (if (not (eq? password check-password))
		(begin
		  (set! incorrect-count (+ incorrect-count 1))
		  (if (< incorrect-count 7)
			(account-error "Incorrect password")
			(call-the-cops "Incorrect password 7 times")))
		(begin
		  (set! incorrect-count 0)
		  (dispatch op))))
	check))
