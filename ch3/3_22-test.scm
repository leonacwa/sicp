
(load "3_22-queue.scm")

(define q1 (make-queue))
((q1 'insert-queue!) 'a)
((q1 'print-queue)) (newline)

((q1 'insert-queue!) 'b)
((q1 'print-queue)) (newline)

((q1 'delete-queue!))
((q1 'print-queue)) (newline)

((q1 'delete-queue!))
((q1 'print-queue)) (newline)

