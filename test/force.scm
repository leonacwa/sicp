(load "delay-force.scm")

(define count 0)
(define p
  (delay (begin (set! count (+ count 1))
				(if (> count x)
				  count
				  (force p)))))

(define proc (lambda () 
			   (begin (set! x 10)
					  (force p))))

(define x 5)

