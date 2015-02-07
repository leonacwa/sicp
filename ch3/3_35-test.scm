;******** header file begin ********
(load "s3_3_5-make-connector.scm")
(load "s3_3_5-probe.scm")
(load "s3_3_5-constant.scm")
(load "3_35-squarer.scm")

;******** header file begin ********

(define a (make-connector))
(define b (make-connector))
(squarer a b)

(probe "a" a)
(probe "b" b)

(set-value! a 12 'user)
(forget-value! a 'user)
(set-value! b 111 'user)

