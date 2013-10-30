
(load "2_7-interval.scm")
(load "interval.scm")
(load "2_10-div-interval.scm")
(load "print-interval.scm")

(define v1 (make-interval 7 12))
(define v2 (make-interval 3 7))
(define v3 (make-interval 0 3))
(define v4 (make-interval -1 3))
(define v5 (make-interval -1 0))
(define v6 (make-interval -2 -1))

(print-interval (div-interval v1 v2))
;(print-interval (div-interval v1 v3))
;(print-interval (div-interval v1 v4))
;(print-interval (div-interval v1 v5))
(print-interval (div-interval v1 v6))

