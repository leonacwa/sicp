;test for ex2.38

(load "2_38-fold-left-right.scm")

(display (fold-right / 1 (list 1 2 3)))
(newline)

(display (fold-left / 1 (list 1 2 3)))
(newline)

(display (fold-right list '() (list 1 2 3)))
(newline)

(display (fold-left list '() (list 1 2 3)))
(newline)

