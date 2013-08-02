(load "product-iter.scm")

(define (factorial n)
  (define (identity x) x)
  (define (next a) (+ a 1))
  (product 1 n  identity next))

