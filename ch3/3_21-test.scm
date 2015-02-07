
(load "s3_3_2-queue.scm")
(load "3_21-print-queue.scm")

(define q1 (make-queue))
(insert-queue! q1 'a)
(print-queue q1) (newline)
(insert-queue! q1 'b)
(print-queue q1) (newline)
(delete-queue! q1)
(print-queue q1) (newline)
(delete-queue! q1)
(print-queue q1) (newline)
