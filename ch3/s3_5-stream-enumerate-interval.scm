; sector 3.5 stream
; stream-enumerate-interval

(define (stream-enumerate-interval low high)
  (if (> low high)
	the-empty-stream
	(cons-stream low
				 (stream-enumerate-interval (+ low 1) high))))

