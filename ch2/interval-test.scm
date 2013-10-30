
(load "2_7-interval.scm")
(load "print-interval.scm")
(load "2_8-sub-interval.scm")
(load "interval.scm")

(define v1 (make-interval 2 4))
(define v2 ( make-interval 2 5))

(print-interval v1)
(print-interval v2)
(newline)
(print-interval (add-interval v1 v2))
(print-interval (sub-interval v1 v2))
(print-interval (mul-interval v1 v2))
(print-interval (div-interval v1 v2))

(display (width-interval (mul-interval v1 v2)))
(newline)
(print-interval (div-interval v1 v2))
(display (width-interval (div-interval v1 v2)))
(newline)

