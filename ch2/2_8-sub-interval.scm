;ex2.8 sub interval

(load "2_7-interval.scm")

(define (sub-interval x y)
  (make-interval (- (lower-bound x) (upper-bound y))
				 (- (upper-bound x) (lower-bound y))))

;test
(load "print-interval.scm")

(define v1 (make-interval 1 3))
(define v2 (make-interval 6 13))

(print-interval v1)
(print-interval v2)
(print-interval (sub-interval v2 v1))

