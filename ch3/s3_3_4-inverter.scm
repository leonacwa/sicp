;sector 3.3.4 数字电路模拟器 inverter

(define (inverter input output)
  (define (invert-input)
	(let ((new-value (logical-not (get-signal input))))
	  (after-delay inverter-delay
				   (lambda ()
					 (set-signal! output new-value)))))
  (add-action! input invert-input)
  'ok)

