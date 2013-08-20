;牛顿法，利用不动点的就发求g(x)=0的答案
;x|->g(x)是可微的，方程g(x)=0的答案就是x|-0>f(x)的不动点，其中f(x)=x - g(x)/Dg(x)，Dg(x)是g(x)的导数

(load "fixed-point.scm")

(define (deriv g)
  (define dx 0.00001)
  (lambda (x)
	(/ (- (g (+ x dx )) (g x))
	   dx)))

(define (newton-transform g)
  (lambda (x)
	(- x (/ (g x) ((deriv g) x)))))

(define (newtons-method g guess)
  (fixed-point (newton-transform g) guess))

