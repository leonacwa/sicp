; ex 3.51 show

(define (show x)
  (display-line x)
  x)

(define x (stream-map show (stream-enumerate-interval 0 10)))

(newline)

(display "Run 1:\n")
(display (stream-ref x 5)) (newline)

(display "Run 2:\n")
(display (stream-ref x 7)) (newline)

