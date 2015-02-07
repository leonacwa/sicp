; sector 3.3.5 约束系统的设计
; celsius-fahrenheit-converter

;******** header file begin ********
(load "s3_3_5-make-connector.scm")
(load "s3_3_5-probe.scm")
(load "s3_3_5-constant.scm")
(load "s3_3_5-multiplier.scm")
(load "s3_3_5-adder.scm")

;******** header file begin ********
(define (celsius-fahrenheit-converter c f)
  (let ((u (make-connector))
		(v (make-connector))
		(w (make-connector))
		(x (make-connector))
		(y (make-connector)))
	(multiplier c w u)
	(multiplier v x u)
	(adder v y f)
	(constant 9 w)
	(constant 5 x)
	(constant 32 y)
	'ok))

(define C (make-connector))
(define F (make-connector))
(celsius-fahrenheit-converter C F)

(probe "Celsius temp" C)
(probe "Fahrenheit temp" F)

;Run
(set-value! C 25 'user)
(newline)
