(load "3_25-table.scm")

(define t1 (make-table))

(define k1 (list 'a 'b 'c))

(define k2 (list 'h 'l 'l))

(define k3 (list 1 2 3))

(define k4 (list 1 4))

(insert! k1 123 t1)
(insert! k2 "Huang Lilong" t1)
(insert! k3 "one two three" t1)
(insert! k4 "one four" t1)

(display "insert end\n")
(display t1) (newline)

(display (lookup k1 t1)) (newline)
(display (lookup k2 t1)) (newline)
(display (lookup k3 t1)) (newline)
(display (lookup k4 t1)) (newline)

