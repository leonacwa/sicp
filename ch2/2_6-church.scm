;ex 2.6 church

; x 是符号，用来表示数
; f 是 successor, 就是 next，产生下一个符号

(define zero (lambda (f) (lambda (x) x)))

(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))

(define one (lambda (f) (lambda (x) (f x))))
(define two (lambda (f) (lambda (x) (f (f x)))))
(define three (lambda (f) (lambda (x) (f (f (f x))))))
(define four (lambda (f) (lambda (x) (f (f (f (f x)))))))

(define (get-num n)
  ((n (lambda (x) (+ 1 x))) 0))

(define (print-church n)
  (display (get-num n))
  (newline))

(define (plus-church m n)
  (lambda (f) (lambda (x) ((m f) ((n f) x)))))

(define (multi-church m n)
  (lambda (f) (lambda (x) ((m (n f)) x))))

(define (exp-church m n)
  (lambda (f) (lambda (x) (((n m) f) x))))

(print-church zero)
(print-church one)
(print-church two)

(print-church (plus-church one two))
(print-church (plus-church two two))
(print-church (multi-church two three))
(print-church (multi-church four three))
(print-church (exp-church two four))
(print-church (plus-church (exp-church two four) two))
(print-church (exp-church three four))
