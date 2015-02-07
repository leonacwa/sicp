;sector 3.3.3 table 单key的table

(define false #f)
(define true #t)

(define (lookup key table)
  (let ((record (assoc key (cdr table))))
	(if record
	  (cdr record)
	  false)))

; 系统中已经有了assoc的实现,可以不用自己实现
(load "s3_3_3-assoc.scm")

(define (insert! key value table)
  (let ((record (assoc key (cdr table))))
	(if record
	  (set-cdr! record value)
	  (set-cdr! table
				(cons (cons key value) (cdr table)))))
  'ok)

(define (make-table)
  (list '*table*))

