;Simpson

(load "sum.scm")

(define (simpson f a b n)
  (define h (* 1.0 (/ (- b a) n)))
  (define (ak k)
	(+ a (* k h)))
  (define (simpson-term k)
	(cond ((= k 0) (f (ak k)))
		  ((= k n) (f (ak k)))
		  ((odd? k) (* 4 (f (ak k))))
		  (else (* 2 (f (ak k))))))
  (define (simpson-next k)
	(+ k 1))
  (if (odd? n)
	(error "n can't be odd!\n")
	(* (/ h 3) (sum simpson-term 0 simpson-next n))))

