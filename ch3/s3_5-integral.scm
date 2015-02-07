; sector 3.5 stream
; p239
; integral

(define (integral integrand initial-value dt)
  (define int
	(cons-stream initial-value
				 (add-streams (scale-stream integrand dt)
							  int)))
  int)

