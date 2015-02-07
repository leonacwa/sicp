; Scheme标准中的delay和force实现

(define force
  (lambda (object)
	 (display "\nmy force\n")
	(object)))

(define-syntax delay
  (syntax-rules ()
	((delay expression)
	 (make-promise (lambda () expression)))))

(define make-promise
  (lambda (proc)
	(let ((result-ready? #f) (result #f))
	  (display "\nmy delay\n")
	  (lambda ()
		(if result-ready?
		  result
		  (let ((x (proc)))
			(if result-ready?
			  result
			  (begin (set! result-ready? #t)
					 (set! result x)
					 result))))))))


