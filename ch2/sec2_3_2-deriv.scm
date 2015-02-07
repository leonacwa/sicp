;p99 example 2.3.2 符号求导


(define (=number? e n)
  (and (number? e) (= e n)))

; base op 
(define (variable? x) (symbol? x))

(define (same-variable? v1 v2)
  (and (variable? v1) (variable? v2) (eq? v1 v2)))

(define (make-sum a1 a2) 
  (cond ((and (number? a1) (number? a2)) (+ a1 a2))
		((=number? a1 0) a2)
		((=number? a2 0) a1)
		(else (list '+ a1 a2))))

(define (make-product m1 m2) 
  (cond ((or (=number? m1 0) (=number? m2 0)) 0)
		((=number? m1 1) m2)
		((=number? m2 1) m1)
		((and (number? m1) (number? m2)) (* m1 m2))
		(else (list '* m1 m2))))

(define (sum? x)
  (and (pair? x) (eq? (car x) '+)))

(define (addend s) (cadr s))

(define (augend s) (caddr s))

(define (product? x)
  (and (pair? x) (eq? (car x) '*)))

(define (multiplier p) (cadr p))

(define (multiplicand p) (caddr p))

; deriv 

(define (deriv e v)
  (cond ((number? e) 0)
		((variable? e)
		 (if (same-variable? e v) 1 0))
		((sum? e)
		 (make-sum (deriv (addend e) v)
				   (deriv (augend e) v)))
		((product? e)
		 (make-sum
		   (make-product (multiplier e)
						 (deriv (multiplicand e) v))
		   (make-product (deriv (multiplier e) v)
						 (multiplicand e))))
		(else
		  (error "unknown expression type -- DERIV" e))))

