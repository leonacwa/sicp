;p51 ex1.41 double

(load "p51-double.scm")

(define (inc x)
  (+ x 1))

(display ((double inc) 0))
(newline)
(display
  (((double double) inc) 0)
  )
(newline)
(display
  (((double (double double)) inc) 0)
  )
(newline)
(((double (double (double double))) inc) 0)

