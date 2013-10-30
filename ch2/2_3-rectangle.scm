;ex 2.3 rectangle

(load "2_2-segment.scm")

(define (make-rectangle lu rd)
  (cons lu rd))

(define (leftup-rectangle rect)
  (car rect))

(define (rightdown-rectangle rect)
  (cdr rect))

(define (leftdown-rectangle rect)
  (make-point (x-point (leftup-rectangle rect))
			  (y-point (rightdown-rectangle rect))))

(define (rightup-rectangle rect)
  (make-point (x-point (righdown-rectangle rect))
			  (y-point (leftup-rectangle rect))))

(define (area-rectangle rect)
  (* (- (x-point (rightdown-rectangle rect)) (x-point (leftup-rectangle rect)))
	 (- (y-point (leftup-rectangle rect)) (y-point (rightdown-rectangle rect)))))

(define (perimeter-rectangle rect)
  (* 2 (+ (- (x-point (rightdown-rectangle rect)) (x-point (leftup-rectangle rect)))
		  (- (y-point (leftup-rectangle rect)) (y-point (rightdown-rectangle rect))))))

