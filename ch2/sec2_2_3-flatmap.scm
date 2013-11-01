
(load "sec2_2_3-accumulate.scm")

(define (flatmap proc seq)
  (accumulate append '() (map proc seq)))

