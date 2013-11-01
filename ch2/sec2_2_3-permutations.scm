(load "sec2_2_3-flatmap.scm")

(define (permutations s)
  (if (null? s)
	(list '())
	(flatmap (lambda (x)
			   (map (lambda (p) (cons x p))
					(permutations (remove x s))))
			 s)))

(define (remove item seq)
  (filter (lambda (x) (not (= x item))) seq))

