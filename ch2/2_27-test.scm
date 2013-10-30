;test for ex 2.27

(load "2_27-deep-reverse.scm")

(define x (list (list 1 2) (list 3 4)))
(define y (list (list 1 2) (list 3 4) (list 5 6)))
(define z (list 1 2))

(display x)
(newline)

(display (reverse x))
(newline)

(display (deep-reverse x))
(newline)

(display y)
(newline)

(display (deep-reverse y))
(newline)

(newline)
(display (tree-reverse x))
(newline)

(display (tree-reverse y))
(newline)

(display (tree-reverse z))
(newline)
