;test for ex 2.54

(load "2_54-equal.scm")

(define l1 '(this is a list))
(define l2 '(this is a list))
(define l3 '(this (is a) list))

(display (equal? l1 l2))
(newline)
(display (my-equal? l1 l2))
(newline)
(newline)

(display (equal? l1 l3))
(newline)
(display (my-equal? l1 l3))
(newline)
(newline)
