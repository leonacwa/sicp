; ex 3.68 pairs

(define (pairs s t)
  (interleave
	(stream-map (lambda (x) (list (stream-car s) x))
				t)
	(pairs (stream-cdr s) (stream-cdr t))))

; 超出递归深度，因为interleave是立即执行的，所以必须算出pairs过程调用的返回，但是每次pairs调用都会立即执行interleave,而interleave又会调用pairs，导致无法返回结果，递归过深。
;
