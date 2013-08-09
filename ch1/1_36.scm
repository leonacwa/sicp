;p47 ex1.36

(load "fixed-point2.scm")
(load "average-damp.scm")

(define formula
  (lambda (x) (/ (log 1000) (log x))))

(fixed-point formula 2.0)
(newline)
(fixed-point (average-damp formula) 2.0)
