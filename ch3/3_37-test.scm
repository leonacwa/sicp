
;******** header file begin ********
(load "s3_3_5-make-connector.scm")
(load "s3_3_5-probe.scm")
(load "s3_3_5-constant.scm")
(load "s3_3_5-adder.scm")
(load "s3_3_5-multiplier.scm")
(load "3_35-squarer.scm")

(load "3_37-c.scm")

;******** header file begin ********

;celsius-fahrenheit-converter
(define (celsius-fahrenheit-converter x)
  (c+ (c* (c/ (cv 9) (cv 5))
		  x)
	  (cv 32)))

; Run

(define C (make-connector))
(define F (celsius-fahrenheit-converter C))

(probe "C" C)
(probe "F" F)

(set-value! C 25 'user)

(forget-value! C 'user)

(set-value! F 212 'user)
