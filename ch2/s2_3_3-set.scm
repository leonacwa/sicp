;2.3.3 set  (p103)

(define true #t)
(define false #f)

; element-of-set?
(define (element-of-set? x set)
  (cond ((null? set) false)
		((equal? x (car set)) true)
		(else (element-of-set? x (cdr set)))))

;adjoin-set
(define (adjoin-set x set)
  (if (element-of-set? x set)
	set
	(cons x set)))

; intersetion-set set1 set2)
(define (intersetion-set set1 set2)
  (cond ((or (null? set1) (null? set2)) '())
		((element-of-set? (car set1) set2)
		 (cons (car set1)
			   (intersetion-set (cdr set1) set2)))
		(else (intersetion-set (cdr set1) set2))))

;print-set
(define (print-set set)
  (display set)
  (newline))

