;ex 3.34 squarer
;******** header file begin ********
(load "s3_3_5-make-connector.scm")
(load "s3_3_5-probe.scm")
(load "s3_3_5-constant.scm")
(load "s3_3_5-multiplier.scm")
;******** header file begin ********

; 解释: multiplier是在有两个变量确定时可以得到第三个变量，当设置b值的时候，a还没设置，这时相当于有两个变量没设置值，就不会出现求值a的情况，如果要修改，必须在内部定义另外一个 connector x，并定义恒等约束器，约束a 和 x恒等
; 另外一种解决办法是重写一个squarer,不使用其他约束器

(display "Run 1:\n")
(define (squarer a b)
  (multiplier a a b))

; Run

(define a (make-connector))
(define b (make-connector))

(squarer a b)
(probe "a" a)
(probe "b" b)

(set-value! a 2 'user)
(newline)

(forget-value! a 'user)
(newline)

(set-value! b 4 'user)
(newline)

