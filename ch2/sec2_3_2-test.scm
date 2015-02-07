;test for 符号求导

(load "sec2_3_2-deriv.scm")

(define e1 '(+ x 3))
(display
  (deriv e1 'x))
(newline)

(define e2 '(* x y))
(display 
  (deriv e2 'x))
(newline)

(define e3 '(* (* x y) (+ x 3)))
(display
  (deriv e3 'x))
(newline)
