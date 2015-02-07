; sector 3.5 stream
; scale-stream

(define (scale-stream stream factor)
  (stream-map (lambda (x) (* x factor)) stream))

