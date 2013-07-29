(define (f n)
  (define (f-iter a b c y)
	(if (< n y) c
	  (f-iter (+ a (* 2 b) (* 3 c)) a b (+ y 1))))
  (f-iter  2 1 0 0))

