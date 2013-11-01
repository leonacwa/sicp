
(load "2_42-queens.scm")

;int a[10]={1, 0, 0, 2, 10, 4, 40, 92, 352, 724};

(define result (queens 5))

(display (length result))
(newline)
(display result)
(newline)
