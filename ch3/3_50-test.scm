
;stream-enumerate-interval ;在MIT-Scheme 中也有实现
;(load "s3_5-stream-enumerate-interval.scm")
(load "3_50-stream-map.scm")
(load "s3_5-display-stream.scm")

(define s1 (stream-enumerate-interval 1 100000000000))
(define s2 (stream-enumerate-interval 11 200000000000))

(define sr (stream-map + s1 s2))

(display (stream-car sr)) (newline)

; 不停输出中，是生成一个输出一个
(display-stream sr)
