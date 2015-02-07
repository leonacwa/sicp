;test for 2.57

(load "2_57-deriv.scm")

(define e '(**  x 5))
(display
  (deriv e 'x))
(newline)

(define e '(* x x x))
(display
  (deriv e 'x))
(newline)


(define e '(* 3 x (**  x 2)))
(display
  (deriv e 'x))
(newline)

(define e '(* x y (+ x 3)))
(display
  (deriv e 'x))
(newline)

