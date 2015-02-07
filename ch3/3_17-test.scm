
(load "3_17-count-pairs.scm")
(load "3_13-make-cycle.scm")

(define one (list 1))
(define two (list 1 2))
(define three (list 1 2 3))
(define four (list one one))

(define ff (cons one one))
(define seven (cons ff ff))

(define x (list 1 2 3))
(define cycle (make-cycle x))

(define y (list 1 2))
(define z (list y y))
(display (count-pairs z)) (newline)

(display (count-pairs one)) (newline)
(display (count-pairs two)) (newline)
(display (count-pairs three)) (newline)
(display (count-pairs four)) (newline)
(display (count-pairs seven)) (newline)
(display (count-pairs cycle)) (newline)

