
(load "sec2_2_3-enumerate-interval.scm")
(load "sec2_2_3-flatmap.scm")

(define (prime? n)
  (define (iter x up)
	(cond ((> x up) #t)
		  ((= 0 (remainder n x)) #f)
		  (else (iter (+ x 1) up))))
  (let ((up (+ (sqrt n) 0.001)))
	(iter 2 up)))

(define (prime-sum? pair)
  (prime? (+ (car pair) (cadr pair))))

(define (make-pair-sum pair)
  (list (car pair) (cadr pair) (+ (car pair) (cadr pair))))

(define (prime-sum-pairs n)
  (map make-pair-sum
	   (filter prime-sum?
			   (flatmap
				 (lambda (i)
				   (map (lambda (j) (list i j))
						(enumerate-interval 1 (- i 1))))
				 (enumerate-interval 1 n)))))

