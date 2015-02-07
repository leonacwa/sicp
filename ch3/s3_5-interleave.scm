; sector 3.5 stream
; interleave
; 交替地合并两个流

(define (interleave s1 s2)
  (if (stream-null? s1)
	s2
	(cons-stream (stream-car s1)
				 (interleave s2 (stream-cdr s1)))))


