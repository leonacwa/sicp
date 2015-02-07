; sector 3.5 stream
; 当程序不是运行在MIT-Scheme环境中时使用的;
; syntax-rules 应该是Scheme标准里的，因为标准里很多地方都用syntax-rules去实现，但是Guile解释器没有实现

(define-syntax cons-stream 
  (syntax-rules ()
				((cons-stream x y) (cons x (delay y)))))

