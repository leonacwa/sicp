;p40 ex1.33a 素数和
(load "prime.scm")
(load "filtered-accumulate-recu.scm")

(define (prime-sum a b)
  (filtered-accumulate prime? + 0 (lambda (x) x) a (lambda (x) (+ x 1)) b))

