;ex 2.11 mul-interval

(define (mul-interval2 x y)
  (let ((lx (lower-bound x))
		(ux (upper-bound x))
		(ly (lower-bound y))
		(uy (upper-bound y)))
	(cond 
	  ;case 0 <= lx <= ux
	  ((and (>= lx 0) (>= ux 0))
	   (cond 
		 ((and (>= ly 0) (>= uy 0)) (make-interval (* lx ly) (* ux uy)))
		 ((and (< ly 0) (< uy 0)) (make-interval (* ux ly) (* lx uy)))
		 ((and (< ly 0) (>= uy 0)) (make-interval (* ux ly) (* ux uy)))
		 (else (error "error y"))
		 ))

	  ;case lx < 0 <= ux
	  ((and (< lx 0) (>= ux 0))
	   (cond 
		 ((and (>= ly 0) (>= uy 0)) (make-interval (* lx uy) (* ux uy)))
		 ((and (< ly 0) (< uy 0)) (make-interval (* ux ly) (* lx ly)))
		 ((and (< ly 0) (>= uy 0)) (let ((p1 ( * lx ly))
										 (p2 ( * lx uy))
										 (p3 ( * ux ly))
										 (p4 ( * ux uy)))
									 (make-interval (min p1 p2 p3 p4)
													(max p1 p2 p3 p4))))
		 (else (error "error y"))
		 ))

	  ; case lx <= ux < 0
	  ((and (< lx 0) (< ux 0))
	   (cond 
		 ((and (>= ly 0) (>= uy 0)) (make-interval (* lx uy) (* ux ly)))
		 ((and (< ly 0) (< uy 0)) (make-interval (* ux uy) (* lx ly)))
		 ((and (< ly 0) (>= uy 0)) (make-interval (* lx uy) (* lx ly)))
		 (else (error "error y"))
		 ))
	  (else (error "error x"))
	  )))

