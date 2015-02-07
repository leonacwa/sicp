;ex 2.56 deriv   exponentiation

;直接包含原来的文件，用函数覆盖的方式修改
(load "sec2_3_2-deriv.scm")

(define (exponentiation? e)
  (and (pair? e) (eq? (car e) '**)))

(define (base e)
  (cadr e))

(define (exponent e)
  (caddr e))

(define (make-exponentiation a b)
  (cond ((=number? b 0) 1)
		((and (number? a) (number? b)) (exp a b))
		((=number? b 1) a)
		(else (list '** a b))))
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
		((exponentiation? e)
		 (let ((u (base e))
			   (n (exponent e)))
		   (make-product
			 (make-product n (make-exponentiation u (make-sum n -1)))
			 (deriv u v))))
		(else
		  (error "unknown expression type -- DERIV" e))))

