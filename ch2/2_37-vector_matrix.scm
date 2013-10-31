;ex 2.37 vector matrix

(load "sec2_2_3-accumulate.scm")
(load "2_36-accumulate-n.scm")

(define (dot-product v w)
  (accumulate + 0 (map * v w)))

(define (matrix-*-vector m v)
  (map (lambda (w) (dot-product v w)) m))

(define (transpose m)
  (accumulate-n cons '() m))

(define (matrix-*-matrix m n)
  (let ((cols (transpose n)))
	(map (lambda (v) (matrix-*-vector cols v)) m)))

