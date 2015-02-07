
(load "3_4-make-account.scm")

(define acc (make-account 100 'secret-password))

(display
  ((acc 'secret-password 'withdraw) 40))
(newline)

;;
(display "1:\n")
(display
  ((acc 'some-other-password 'deposit) 50))
(newline)

(display "2:\n")
(display
  ((acc 'some-other-password 'deposit) 50))
(newline)

(display "3:\n")
(display
  ((acc 'some-other-password 'deposit) 50))
(newline)

(display "4:\n")
(display
  ((acc 'some-other-password 'deposit) 50))
(newline)

(display "5:\n")
(display
  ((acc 'some-other-password 'deposit) 50))
(newline)


(display "6:\n")
(display
  ((acc 'some-other-password 'deposit) 50))
(newline)


(display "7:\n")
(display
  ((acc 'some-other-password 'deposit) 50))
(newline)

(display "8:\n")
(display
  ((acc 'some-other-password 'deposit) 50))
(newline)

