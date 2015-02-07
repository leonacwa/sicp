
(define (ramanujan-weight p)
  (let ((i (car p))
		(j (cadr p)))
	(let ((sum (+ (* i i i)
				  (* j j j))))
	  (+ (* sum sum)
		 (* i j)))))

(define (r-weight p)
  (let ((i (car p))
		(j (cadr p)))
	(+ (* i i i)
	   (* j j j))))


(define (ramanujan-stream s show)
  (if (stream-null? s)
	the-empty-stream
	;else
	(let ((w1 (r-weight (stream-car s)))
		  (w2 (r-weight (stream-car (stream-cdr s)))))
	  (if (= w1 w2)
		(if show
		  (cons-stream w1 
					   (ramanujan-stream (stream-cdr (stream-cdr s)) false))
		  ;else
		  (ramanujan-stream (stream-cdr (stream-cdr s)) true))
		;else
		(ramanujan-stream (stream-cdr s) true)))))

(define ramanujan (ramanujan-stream (weighted-pairs integers integers ramanujan-weight) true))

