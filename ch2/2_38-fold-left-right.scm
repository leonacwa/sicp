;ex 2.38 fold left right

(load "sec2_2_3-accumulate.scm")

(define fold-right accumulate)

(define (fold-left op initial sequence)
  (define (iter result rest)
	(if (null? rest)
	  result
	  (iter (op result (car rest))
			(cdr rest))))
  (iter initial sequence))

; op 操作要符合交换律
