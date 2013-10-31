
(define (total-weight mobile)
  (+ (branch-weight (left-branch mobile))
	 (branch-weight (right-branch mobile))))

(define (branch-weight branch)
  (if (hang-mobile? branch)
	(total-weight (branch-structure branch))
	(branch-structure branch)))

(define (hang-mobile? branch)
  (pair? (branch-structure branch)))

