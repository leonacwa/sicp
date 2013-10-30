
(load "2_7-interval.scm")
(load "interval.scm")
(load "2_11-mul-interval.scm")
(load "print-interval.scm")

(define v1 (make-interval -3 -1))
(define v2 (make-interval -3 -1))

(print-interval (mul-interval v1 v2))
(print-interval (mul-interval2 v1 v2))

