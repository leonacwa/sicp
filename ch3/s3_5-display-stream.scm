; sector 3.5 stream
; display-stream
; display-line

(define (display-stream s)
  (stream-for-each display-line s))

(define (display-line x)
  (newline)
  (display x))

(define (display-stream-from-to s from to)
  (define (display-iter cur s)
	(cond ((> cur to) 'done)
		  ((stream-null? s) #f)
		  ((< cur from) (display-iter (+ cur 1) (stream-cdr s)))
		  (else (begin (display-line (stream-car s))
				  (display-iter (+ cur 1) (stream-cdr s))))))

  (display-iter 0 s))

