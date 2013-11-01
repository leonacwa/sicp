
(load "2_40-unique-pairs.scm")

(define (unique-triple n)
  (flatmap (lambda (p)
			 (map (lambda (k) (append p (list k)))
				  (enumerate-interval 1 (- (cadr p) 1))))
		   (unique-pairs n)))

