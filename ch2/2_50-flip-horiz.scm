;ex2.50 flip-horiz

(load "sec2_2_3-frame-coord-map.scm")

(define (flip-horiz  painter)
  (transform-painter painter
					 (make-vect 1.0 0)
					 (make-vect 0.0 0.0)
					 (make-vect 1.0 1.0)))

(define (rotate180 painter)
  (transform-painter painter
					 (make-vect 1.0 1.0)
					 (make-vect 0.0 0.0)
					 (make-vect 1.0 0)))

(define (rotate270 painter)
  (transform-painter painter
					 (make-vect 0.0 1.0)
					 (make-vect 0.0 0.0)
					 (make-vect 1.0 1.0)))

