;ex2.7 interval

(define (make-interval a b) (cons a b))

(define (lower-bound z) (car z))

(define (upper-bound z) (cdr z))

