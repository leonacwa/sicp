;
(load "accumulate-iter.scm")
(define (product term a next b)
  (accumulate * 1 term a next b))

(define (fx x) x)
(define (next x) (+ x 1))
