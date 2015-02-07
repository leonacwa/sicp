; sector 3.5 stream
; stream-filter
; MIT-Scheme 中也有实现这个过程

(define (stream-filter pred stream)
  (cond ((stream-null? stream) the-empty-stream)
		((pred (stream-car stream))
		 (cons-stream (stream-car stream)
					  (stream-filter pred (stream-cdr stream))))
		(else (stream-filter pred (stream-cdr stream)))))

