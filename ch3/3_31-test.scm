;ex 3.31 修改make-wire中的内部过程 accept-action-procedure!，去掉其中执行 (proc)

; 该解释与 set-my-signal! 的实现有很大的关系，注意set-my-signal!只有在值变化的时候才调用call-each继续执行
;
; 去掉 accept-action-procedure! 中 (proc)后，就不能及时的改正有关wire的状态，会有错误的状态。
; 比如一个inverter，input初始为0，output初始应该为1才对，去掉(proc)，output的初始值为1，如果把input设为1时，得到结果为0，与当时的output一样，所以就认为没有改动，其实是有改动的! 如果把input设为0，得到结果应该为1，但是因为0与初始的input值0一样，所以就没有继续调用去更新output，此时output仍为0，是错误的!
;
; 我们用half-adder分析，去掉(proc)后，所有wire的初始值为0，参照图3-25分析:
; 将A设为1时，会更新A的值并执行call-each，因为此时D wire值为0，会更新D wire的值为1，并调用与D wire相关的过程，这个就包括更新S wire的值这个过程，此时E wire值为0，经过与运算，此时应该把S wire值设为0，因为S wire值之前的值为0，无变换，所以没有触发相关过程，但是正确的结果应该是S wire为1！
; 如果把(proc)代码加上，这样在计算到与S相连的这个与运算时，因为E wire值为1，所以能得到正确的结果。
;
; 所以，(proc)的作用包括将模拟电路初始化成正确的状态。
;
; *************** header file begin ***************
(load "s3_3_4-agenda.scm")
(load "s3_3_4-logical-calc.scm")
(load "s3_3_4-after-delay.scm")
;(load "s3_3_4-make-wire.scm")
(load "3_31-make-wire.scm") ;!!!!
(load "s3_3_4-probe.scm")
(load "s3_3_4-inverter.scm")
(load "s3_3_4-and-gate.scm")
(load "s3_3_4-or-gate.scm")
(load "s3_3_4-half-adder.scm")
(load "s3_3_4-config.scm")
; *************** header file end ***************
(define input-1 (make-wire))
(define input-2 (make-wire))
(define sum (make-wire))
(define carry (make-wire))

(probe 'sum sum)
(probe 'carry carry)
(half-adder input-1 input-2 sum carry)

(set-signal! input-1 1)

;(newline)(display "current time ") (display (current-time the-agenda)) (newline)

(display "\nRun 1:\n")
(propagate)
(display "\nRun 1 End.\n")

(newline)
(newline)
(display "New 2:\n")

(set-signal! input-2 1)

(display "\nRun 2:\n")
(propagate)
(display "\nRun 2 End.\n")

(newline)

(set-signal! input-1 1)
(set-signal! input-2 0)

(display "\nRun 3:\n")
(propagate)
(display "\nRun 3 End.\n")

