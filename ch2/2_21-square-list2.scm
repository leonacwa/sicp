;ex 2.21 square-list

(define nil '())

(define (square x) (* x x))

(define (square-list items)
  (map square items))

