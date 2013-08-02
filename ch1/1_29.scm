(load "simpson.scm")

(define (cube x)
  (* x x x))

(display (simpson cube 0 1 1000))
(newline)

(display (simpson cube 0 1 1001))

