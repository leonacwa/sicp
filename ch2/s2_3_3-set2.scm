;2.3.3 set  (p103)

(define true #t)
(define false #f)

; element-of-set?
(define (element-of-set? x set)
  (cond ((null? set) false)
		((= x (car set)) true)
		((< x (car set)) false)
		(else (element-of-set? x (cdr set)))))

; intersetion-set set1 set2)
(define (intersetion-set set1 set2)
  (if (or (null? set1) (null? set2))
	'()
	(let ((x1 (car set1)) (x2 (car set2)))
	  (cond ((= x1 x2)
			 (cons x1 (intersetion-set (cdr set1)
									   (cdr set2))))
			((< x1 x2)
			 (intersetion-set (cdr set1) set2))
			((> x1 x2)
			 (intersetion-set set1 (cdr set2)))))))

;print-set
(define (print-set set)
  (display set)
  (newline))

