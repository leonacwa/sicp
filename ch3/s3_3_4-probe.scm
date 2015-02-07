;sector 3.3.4 数字电路模拟器 待处理表  监视器实现

(define (probe name wire)
  (add-action! wire
			   (lambda ()
				 (newline)
				 (display name)
				 (display " ")
				 (display (current-time the-agenda))
				 (display "  New-value = ")
				 (display (get-signal wire)))))

