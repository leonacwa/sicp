; sector 3.5 stream
; 这个文件中的过程 在MIT-Scheme中都有实现

(define (stream-ref s n)
  (if (= n 0)
	(stream-car s)
	(stream-ref (stream-cdr s) (- n 1))))

(define (stream-map proc s)
  (if (stream-null? s)
	the-empty-stream
	(cons-stream (proc (stream-car s))
				 (stream-map proc (stream-cdr s)))))

(define (stream-for-each proc s)
  (if (stream-null? s)
	'done
	(begin (proc (stream-car s))
		   (stream-for-each proc (stream-cdr s)))))

