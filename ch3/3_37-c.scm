
(define (c+ x y)
  (let ((z (make-connector)))
	(adder x y z)
	z))

(define (c* x y)
  (let ((z (make-connector)))
	(multiplier x y z)
	z))

(define (c/ x y)
  (let ((z (make-connector)))
	(multiplier y z x)
	z))

(define (cv value)
  (let ((v (make-connector)))
	(constant value v)
	v))

