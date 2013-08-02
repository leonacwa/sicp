;(load "product-iter.scm")
(load "product-recu.scm")

(define (square x)
  (* x x))

(define (pi-product n)
  (define (next x)
	(+ x 2))
  (define (f x)
	(/ (* x (+ x 2.0)) (square (+ x 1))))
  (* 4.0 (product 2 (- n 2) f next)))

