;ex 2.57 deriv

(load "sec2_3_2-deriv.scm")
(load "2_56-deriv-exp.scm")

(define (augend e)
  (cond ((null? e) e)
		((and (pair? e) (null? (cdddr e))) (caddr e))
		(else (cons '+ (cddr e)))))

(define (multiplicand e)
  (cond ((null? e) e)
		((and (pair? e) (null? (cdddr e))) (caddr e))
		(else (cons '* (cddr e)))))

