(load "3_7-make-joint.scm")

(define acc (make-account 100 'abc))
(define bcc (make-joint acc 'abc 'def))

(display "acc withdraw 10:") (display ((acc 'abc 'withdraw) 10)) (newline)

(display "bcc withdraw 10:") (display ((bcc 'def 'withdraw) 10)) (newline)

(display "bcc deposit 30:") (display ((bcc 'def 'deposit) 30)) (newline)

(display "acc withdraw 10:") (display ((acc 'abc 'withdraw) 10)) (newline)
