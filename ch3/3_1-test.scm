;ex 3.1 make-accumulator test

(load "3_1-accumulator.scm")

(define A (make-accumulator 5))

(display
  (A 10))
(newline)
(display
  (A 10))
(newline)
