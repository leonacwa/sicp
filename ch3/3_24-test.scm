(load "3_24-table.scm")

(define number-table (make-table =))                      ; 以数字为关键字的表

(display ((number-table 'insert-proc!) 10086 10086 'hello-moto)) (newline)

(display ((number-table 'lookup-proc) 10086 10086)) (newline)

(define symbol-table (make-table eq?))                    ; 以符号为关键字的表

(display ((symbol-table 'insert-proc!) 'peter 'age 25)) (newline)

(display ((symbol-table 'lookup-proc) 'peter 'age)) (newline)
