
(load "2_7-interval.scm")
(load "interval.scm")
(load "print-interval.scm")
(load"interval-center.scm")

(define (par1 r1 r2)
  (div-interval 
	(mul-interval r1 r2)
	(add-interval r1 r2)))

(define (par2 r1 r2)
  (let ((one (make-interval 1 1)))
	(div-interval 
	  one
	  (add-interval (div-interval one r1)
					(div-interval one r2)))))

(define aa (make-center-width 5 0.1))
(define bb (make-center-width 10 0.1))

(print-interval (par1 aa bb))
(print-interval (par2 aa bb))

(define v1 (make-center-width 2 0.1))
(define v2 (make-center-width 1 0.1))

(print-interval (div-interval v1 v1))
(print-interval (div-interval v1 v2))

(define a (make-interval 1 2))
(define b (make-interval -3 -2))
(define c (make-interval 3 4))

(print-interval (mul-interval a (add-interval b c)))
(print-interval (add-interval (mul-interval a b) (mul-interval b c)))
