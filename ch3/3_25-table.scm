;ex 3.24 table keylist的table

(define false #f)
(define true #t)

(define (make-table)
  (list '*table*))

(define (table? table)
  (equal? '*table* (car table)))

(define (lookup keylist table)
  (if (table? table)
	(let ((current-key (car keylist))
		  (remain-key (cdr keylist)))
	  (let ((record (assoc current-key (cdr table))))
		(if record 
		  (if (null? remain-key)
			(cdr record)
			(lookup remain-key (cdr record)))
		  false)))
	;else
	false))

(define (insert! keylist value table)

  (define (join-in-table! key value table)
	(set-cdr! table
			  (cons (cons key value) (cdr table)))
	table)

  (if (table? table)
	(if (list? keylist)
	  (let ((current-key (car keylist))
			(remain-key (cdr keylist)))
		(let ((record (assoc current-key (cdr table))))
		  (cond ((and record (not (null? remain-key)))
				 (insert! remain-key value (cdr record)))
				((and record (null? remain-key))
				 (set-cdr! record value))
				((and (not record) (not (null? remain-key)))
				 (join-in-table! current-key (insert! remain-key value (make-table)) table))
				((and (not record) (null? remain-key))
				 (join-in-table! current-key value table)))
		  table))
	  ;else
	  (insert! (list keylist) value table))
	;else
	false))

