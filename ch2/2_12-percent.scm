
(define (make-center-percent c p)
  (let ((w (abs (* c (/ p 100.0)))))
	(make-center-width c w)))

(define (percent i)
  (* 100 (/ (width i) (abs (center i)))))

