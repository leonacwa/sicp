; test for rat

(load "make-rat.scm")
(load "cal-rat.scm")
(load "print-rat.scm")

(print-rat (make-rat 1 -2))
(newline)

(define one-third (make-rat 1 3))
(define one-half (make-rat 1 2))

(newline)
(print-rat (add-rat one-half one-half))
(newline)

(display (equal-rat? one-third one-third))
(newline)
(display (equal-rat? one-third one-half))

(newline)
