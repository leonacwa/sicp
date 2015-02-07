;test for 2.56 exp deriv

(load "2_56-deriv-exp.scm")

(define e '(**  x 5))
(display
  (deriv e 'x))
(newline)

(define e '(* 3 (**  x 1)))
(display
  (deriv e 'x))
(newline)

