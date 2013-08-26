;p52 ex1.45 nth-root

(load "damped-nth-root.scm")
(load "lg.scm")

(define (nth-root n)
  (damped-nth-root n (lg n)))

