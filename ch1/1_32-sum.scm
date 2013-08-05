;
(load "accumulate-iter.scm")

(define (sum term a next b)
  (accumulate + 0 term a next b))

(define (fx x) x) ; 测试用的函数，返回x的值

