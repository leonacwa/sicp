;p51 ex1.44 smooth

(load "repeated-smooth.scm")

(define (f x)
  (* x x))

(display 
  ((smooth f) 5))

(newline)

(display 
  ((smooth (smooth f)) 2))

(newline)

(display 
  ((repeated-smooth f 1) 2))

