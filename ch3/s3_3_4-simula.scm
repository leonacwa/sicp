; sector 3.3.4 数字电路模拟器 
; 一个简单的实例模拟

; *************** header file begin ***************
(load "s3_3_4-agenda.scm")
(load "s3_3_4-logical-calc.scm")
(load "s3_3_4-after-delay.scm")
(load "s3_3_4-make-wire.scm")
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

