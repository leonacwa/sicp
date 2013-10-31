(load "2_29-mobile-represent.scm")
(load "2_29-total-weight.scm")
(load "2_29-mobile-balance.scm")

(define b1 (make-branch 1 1))
(define b2 (make-branch 1 1))
(define b3 (make-branch 1 1))
(define b4 (make-branch 1 1))

(define m1 (make-mobile b1 b2))
(define m2 (make-mobile b3 b4))

(define B1 (make-branch 1 m1))
(define B2 (make-branch 1 m1))

(define M1 (make-mobile B1 B2))

(display "BALANCE ")
(display (mobile-balance? M1))
(newline)

