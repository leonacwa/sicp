;test for ex2.58a

(load "2_58-deriv-a.scm")

(define e '(x + (3 * (x + (y + 2)))))
(define e '(x + (x * x)))

(display e)
(newline)

(display
  (deriv e 'x))
(newline)
