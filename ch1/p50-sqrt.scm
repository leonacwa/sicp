(load "newtons-method.scm")

(define (square x)
  (* x x))

(define (my-sqrt x)
  (newtons-method (lambda (y) (- (square y) x))
				  1.0))

