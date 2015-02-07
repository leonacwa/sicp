; ex 3.50 stream-map
; 注意看 2.2.3 解的脚注78
;

(define (stream-map proc . argstreams)
  (if  (stream-null? (car argstreams))
	the-empty-stream
	(cons-stream
	  (apply proc (map (lambda (s) (stream-car s)) argstreams))
	  (apply stream-map
			 (cons proc (map (lambda (s) (stream-cdr s)) argstreams))))))

