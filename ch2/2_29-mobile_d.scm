;ex 2.29 mobile .problem d
; problem d: 只要修改 problem a 的代码即可

(define (make-mobile left right)
  (cons left right))

(define (make-branch len structure)
  (cons len structure))

; problem a

(define (left-branch mobile)
  (car mobile))

(define (right-branch mobile)
  (cdr mobile))

(define (branch-length branch)
  (car branch))

(define (branch-structure branch)
  (cdr branch))

(define (branch? branch)
  (not (pair? (car branch))))

; problem b

(define (total-weight-branch branch)
  (let ((structure (branch-structure branch)))
	(if (not (pair? structure))
	  structure
	  (+ (total-weight-branch (left-branch structure))
		 (total-weight-branch (right-branch structure))))))

(define (total-weight mobile)
  (+ (total-weight-branch (left-branch mobile))
	 (total-weight-branch (right-branch mobile))))

; problem c

(define (balanced-mobile? mobile)
  (define (cal-mobile mobile)
	(cond ((not (pair? mobile)) (cons #t mobile))
		  ((branch? mobile) (cal-mobile (branch-structure mobile)))
		  (else (let ((lb-length (branch-length (left-branch mobile)))
					  (rb-length (branch-length (right-branch mobile)))
					  (lb (cal-mobile (left-branch mobile)))
					  (rb (cal-mobile (right-branch mobile))))
				  (if (and (car lb) (car rb))
					(if (= (* lb-length (cdr lb)) (* rb-length (cdr rb)))
					  (cons #t (+ (cdr lb) (cdr rb)))
					  (cons #f -1))
					(cons #f -1))))))
  (let ((b (cal-mobile mobile)))
	(car b)))


