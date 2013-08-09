; 连分数递归版
(define (cont-frac n d k)
(define (recu i)
  (if (= i k) 
	(d k)
	(/ (n i) (+ (d i) (recu (+ i 1))))))
(recu 1))


