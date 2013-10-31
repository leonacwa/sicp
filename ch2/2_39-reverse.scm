;ex 2.39 reverse


(load "2_38-fold-left-right.scm")

(define (reverse1 seq)
  (fold-right (lambda (x y) (append y (list x))) '() seq))

(define (reverse2 seq)
  (fold-left (lambda (x y) (cons y x)) '() seq))

