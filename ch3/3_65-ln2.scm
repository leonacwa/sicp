; ex 3.65 ln2

(define (ln2-summands n)
  (cons-stream (/ 1.0 n)
			   (stream-map - (ln2-summands (+ n 1)))))

(define ln2 (partial-sums (ln2-summands 1.0)))

