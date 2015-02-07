; ex 3.58 expand

(define (expand num den radix)
  (cons-stream
	(quotient (* num radix) den)
	(expand (remainder (* num radix) den) den radix)))

