;ex3.13 make-cycle

(load "s3_3_1-last-pair.scm")

(define (make-cycle x)
  (set-cdr! (last-pair x) x)
  x)

(define z (make-cycle (list 'a 'b 'c)))
; 出现循环
