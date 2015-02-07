
;******** header file begin ********
(load "s3_3_5-make-connector.scm")
(load "s3_3_5-probe.scm")
(load "s3_3_5-constant.scm")
(load "s3_3_5-multiplier.scm")
(load "s3_3_5-adder.scm")
(load "3_33-averager.scm")
;******** header file begin ********

(define a (make-connector))
(define b (make-connector))
(define c (make-connector))

(averager a b c)

(probe "a" a)
(probe "b" b)
(probe "c" c)

;Run
(set-value! a 2.5 'user)
(set-value! b 2 'user)
(newline)
