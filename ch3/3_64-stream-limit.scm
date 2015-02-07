; ex 3.64 stream-limit

(define (stream-limit s tolerance)
  (define (close-enough? a b)
	(< (abs (- a b)) tolerance))

  (let ((a (stream-car s))
		(b (stream-car (stream-cdr s))))
	(if (close-enough? a b)
	  b
	  (stream-limit (stream-cdr s) tolerance))))

