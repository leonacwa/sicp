
(define (append! x y)
  (set-cdr! (last-pair x) y)
  x)
