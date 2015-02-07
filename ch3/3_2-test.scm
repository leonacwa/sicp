;ex 3.2 make-monitored test

(load "3_2-make-monitored.scm")

(define s (make-monitored sqrt))

(display (s 100))
(newline)

(display 
  (s 'how-many-calls?))
(newline)

(display
  (s 'reset-count))
(newline)
