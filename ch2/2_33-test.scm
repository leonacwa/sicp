;test for ex 2.33

(load "2_33-map_append_length.scm")

(define l1 (list 1 2 3 4 5))
(define l2 (list 6 7 8 9 10))

(display "map \n")
(display (map (lambda (x) (* x x)) l1))
(newline)
(display (mymap (lambda (x) (* x x)) l1))
(newline)

(display "append \n")
(display (append l1 l2))
(newline)
(display (myappend l1 l2))
(newline)

(display "length \n")
(display (length l1))
(newline)
(display (mylength l1))
(newline)

