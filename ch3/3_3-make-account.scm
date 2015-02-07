;ex 3.3 make-account

(define (make-account balance password)

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

  (define (check check-password op)
	(if (not (eq? password check-password))
	  (account-error "Incorrect password")
	  (dispatch op)))
  check)

