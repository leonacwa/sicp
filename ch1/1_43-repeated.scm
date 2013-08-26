;p51 ex1.43 repeated 

;(load "repeated.scm")
;(load "repeated-recu.scm")
;(load "repeated-compose-recu.scm")
(load "repeated-compose-iter.scm")

(define (square x) 
  (* x x))

((repeated square 2) 5)

