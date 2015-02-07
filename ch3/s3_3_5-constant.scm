; sector 3.3.5 约束系统的设计 constant 

(define (constant value connector)
  (define (me request)
	(error "Unknown request -- CONSTANT" request))
  (connect connector me)
  (set-value! connector value me)
  me)

