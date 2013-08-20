;p51 ex1.42 compose

(load "compose.scm")

(define (square x)
  (* x x))

(define (inc x)
  (+ x 1))

((compose square inc) 6)
