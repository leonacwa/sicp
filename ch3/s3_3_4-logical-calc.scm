;sector 3.3.4 数字电路模拟器 基础逻辑运算

;not
(define (logical-not s)
  (cond ((= s 0) 1)
		((= s 1) 0)
		(else (error "Invalid signal" s))))

;and
(define (logical-and s1 s2)
  (cond ((and (= s1 0) (= s2 0)) 0)
		((and (= s1 0) (= s2 1)) 0)
		((and (= s1 1) (= s2 0)) 0)
		((and (= s1 1) (= s2 1)) 1)
		(else (error "Invalid signal" s))))
;or
(define (logical-or s1 s2)
  (cond ((and (= s1 0) (= s2 0)) 0)
		((and (= s1 0) (= s2 1)) 1)
		((and (= s1 1) (= s2 0)) 1)
		((and (= s1 1) (= s2 1)) 1)
		(else (error "Invalid signal" s))))

