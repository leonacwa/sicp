;p551 ex1.40 x^3 + a*x^2 + b*x + c = 0 的解
(load "newtons-method.scm")

(define (square x)
  (* x x ))

(define  (cube x)
  (* x x x))

(define (cubic a b c)
  (lambda (x)
	(+ (cube x)
	   (* a (square x))
	   (* b  x)
	   c)))

(define (solve-cubic a b c)
  (newtons-method (cubic a b c) 1))

(define sc solve-cubic)
