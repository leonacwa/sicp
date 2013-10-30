(load "gcd.scm")

(define (numer x)
  (car x))

(define (denom x)
  (cdr x))

; for ex2.1
(define (make-rat n d)
  (let ((g (gcd (abs n) (abs d))))
	(if (< d 0)
	  (cons (/ (- n) g) (/ (- d) g))
	  (cons (/ n g) (/ d g)))))

