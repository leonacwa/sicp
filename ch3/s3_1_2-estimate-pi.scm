;sector 3.1.2 estimate-pi

(load "s3_1_2-monte-carlo.scm")

(define rand 
  (lambda ()
	(random 10000)))

(define (estimate-pi trials)
  (sqrt (/ 6 (monte-carlo trials cesaro-test))))

(define (cesaro-test)
  (= (gcd (rand) (rand)) 1))

