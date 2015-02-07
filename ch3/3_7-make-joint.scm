;ex 3.7 make-joint

(define (make-account balance password)

  (define (withdraw amount)
	(if (>= balance amount)
	  (begin (set! balance (- balance amount))
			 balance)
	  "Insufficient funds"))

  (define (deposit amount)
	(set! balance (+ balance amount))
	balance)

  (define (account-error info)
	(lambda (. args)
	  info))

  (define (dispatch m)
	(cond ((eq? m 'withdraw) withdraw)
		  ((eq? m 'deposit) deposit)
		  ((eq? m 'joint) joint)
		  (else (error "Unknown request -- MAKE-ACCOUNT"
					   m))))

  (define (joint password)
	(lambda (given-password op)
	  (if (not (eq? password given-password))
		(account-error "Incorrect password")
		(dispatch op))))

  (joint password))

(define (make-joint account password new-password)
  ((account password 'joint) new-password))

