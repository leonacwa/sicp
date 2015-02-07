; sector 3.5 stream
; sqrt-stream

(define (sqrt-stream x)

  (define (sqrt-improve a x)
	(/ (+ a (/ x a)) 2))

  (define guesses
	(cons-stream 1.0
				 (stream-map (lambda (guess)
							   (sqrt-improve guess x))
							 guesses)))
  guesses)

