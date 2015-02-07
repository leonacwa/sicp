;ex 2.51 below2

(define (below painter1 painter2)
  (rotate90 (beside
			  (rotate270 painter1)
			  (rotate270 painter2))))

