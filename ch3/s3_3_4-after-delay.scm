;sector 3.3.4 数字电路模拟器 待处理表

;依赖 agenda

;(load "s3_3_4-agenda.scm")

(define (after-delay delay action)
  (add-to-agenda! (+ delay (current-time the-agenda))
				  action
				  the-agenda))

(define (propagate)
  (if (empty-agenda? the-agenda)
	'done
	(let ((first-item (first-agenda-item the-agenda)))
	  (first-item)
	  (remove-first-agenda-item! the-agenda)
	  (propagate))))

