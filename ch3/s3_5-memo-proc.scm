; sector 3.5 stream
; memo-proc
; Scheme标准已经对force实现记忆化，每次force求值都会返回第一次的结果
; 未完成
;
(define (memo-proc proc)
  (let ((already-run? #f) (result #f))
	(lambda ()
	  (if (not already-run?)
		(begin (set! result (proc))
			   (set! already-run? #t)
			   result)
		result))))

(define mydelay 
  (define-syntax _delay 
	(syntax-rules ()
				  ((proc) (lambda () proc)))))

