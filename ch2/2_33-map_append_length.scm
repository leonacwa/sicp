;ex 2.33 map append length

(load "sec2_2_3-accumulate.scm")

(define nil '())

(define (mymap p sequence)
  (accumulate (lambda (x y) (cons (p x) y)) nil sequence))

(define (myappend seq1 seq2)
  (accumulate cons seq2 seq1))

(define (mylength sequence)
  (accumulate (lambda (x y) (if (null? x)
							  y
							  (+ y 1)))
			  0 sequence))

