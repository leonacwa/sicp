;ex 3.17 count-pairs

(define (false? x)
  (eq? #f x))

(define (count-pairs x)

  (define (inner x memo)
	(if (and (pair? x)
			 (false? (memq x memo)))
	  (inner (car x)
			 (inner (cdr x) (cons x memo)))
	  memo))

  (length (inner x '())))

