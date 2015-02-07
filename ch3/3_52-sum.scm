;ex 3.52 sum
(load "s3_5-display-stream.scm")

(newline)

(define sum 0)

(define (accum x)
  (set! sum (+ x sum))
  sum)

(define seq (stream-map accum (stream-enumerate-interval 1 20)))
(display "sum=") (display sum) (newline)

(define y (stream-filter even? seq))
(display "sum=") (display sum) (newline)

(define z (stream-filter (lambda (x)
						   (= (remainder x 5) 0))
						 seq))
(display "sum=") (display sum) (newline)

(stream-ref y 7)
(display "sum=") (display sum) (newline)

(display-stream z)
(display "sum=") (display sum) (newline)

