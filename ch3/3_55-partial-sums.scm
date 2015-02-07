;ex 3.55 partial-sums

(define (partial-sums s)
  (define ps 
	  (cons-stream (stream-car s)
				   (stream-map + ps (stream-cdr s))))
  ps)

