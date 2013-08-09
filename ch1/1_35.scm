; p47 ex 1.35

(load "fixed-point.scm")

(define golden-ratio
  (fixed-point (lambda (x) (+ 1 (/ 1.0 x))) 1.0))

