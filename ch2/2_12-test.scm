
(load "2_7-interval.scm")
(load "interval.scm")
(load "interval-center.scm")
(load "2_12-percent.scm")
(load "print-interval.scm")

(define v1 (make-center-percent 2 15.0))

(print-interval v1)

(display (width v1))
(newline)
(display (center v1))
(newline)
(display (percent v1))
(newline)

