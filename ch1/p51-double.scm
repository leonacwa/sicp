; 将一个过程应用两次

(define (double proc)
  (lambda (x)
	(proc (proc x))))

