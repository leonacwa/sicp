
(define (branch-torque branch)
  (* (branch-length branch)
	 (branch-weight branch)))

(define (mobile-balance? mobile)
  (let ((left (left-branch mobile))
		(right (right-branch mobile)))
	(and (same-branch-torque? mobile)
		 (branch-balance? left)
		 (branch-balance? right))))

(define (same-branch-torque? mobile)
  (= (branch-torque (left-branch mobile))
	 (branch-torque (right-branch mobile))))

(define (branch-balance? branch)
  (if (hang-mobile? branch)
	(mobile-balance? (branch-structure branch))
	#t))

