;ex 2.20 same-parity

(define (same-parity a . li)
  (filter (if (even? a) even? odd?) (cons a li)))

(display (same-parity 1 2 3 4 5 6 7))
(newline)
(display (same-parity 2 3 4 5 6 7))
(newline)
