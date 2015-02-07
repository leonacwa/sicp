
(load "3_3-make-account.scm")

(define acc (make-account 100 'secret-password))

(display
  ((acc 'secret-password 'withdraw) 40))
(newline)

(display
  ((acc 'some-other-password 'deposit) 50))
(newline)

