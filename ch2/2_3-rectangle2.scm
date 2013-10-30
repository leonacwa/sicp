;ex 2.3 rectangle

(load "2_2-segment.scm")

;********* modify *************
(define (make-rectangle lu rd)
  (cons lu (cons (- (x-point rd) (x-point lu)) 
				 (- (y-point lu) (y-point rd)))))

(define (width-rectangle rect)
  (car (cdr rect)))

(define (height-rectangle rect)
  (cddr rect))

(define (leftup-rectangle rect)
  (car rect))

(define (rightdown-rectangle rect)
  (make-point (+ (x-point (leftup-rectangle rect)) (width-rectangle rect))
			  (- (y-point (leftup-rectangle rect)) (height-rectangle rect))))

;******** modify *************

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

