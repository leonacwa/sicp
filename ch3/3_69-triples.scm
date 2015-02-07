; ex 3.69 triples
; triples

(define (triples s t u)
  (cons-stream
	(list (stream-car s) (stream-car t) (stream-car u))
	(interleave
	  (stream-map (lambda (x) (list (stream-car s) (car x) (cadr x)))
				   (pairs t (stream-cdr u)))
	  (triples (stream-cdr s) (stream-cdr t) (stream-cdr u)))))

