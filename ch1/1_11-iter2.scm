(define (f n)
  (define (g a b c)
	(+ a (* 2 b) (* 3 c)))
  (define (f-iter a b c x)
	(if (< n (+ x 3)) a
	  (f-iter (g a b c) a b (+ 1 x))))
  (if (< n 3) n
	(f-iter 2 1 0 0)))

(define (f2 n)
  (define (f-iter a b c i n)
	(if (= i n)
	  c
	  (f-iter (+ a (* 2 b) (* 3 c))
			  a
			  b
			  (+ i 1)
			  n)))
  (f-iter 2 1 0 0 n))

(display (f2 (read)))
(newline)
