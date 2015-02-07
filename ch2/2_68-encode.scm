;ex 2.68 encode

; load element-of-set?
(load "s2_3_4-huffman.scm")

(define (encode message tree)
  (if (null? message)
	'()
	(append (encode-symbol (car message) tree)
			(encode (cdr message) tree))))

(define (encode-symbol symbol tree)
  (cond ((leaf? tree)
		 '())
		((symbol-in-tree? symbol (left-branch tree))
		 (cons 0
			   (encode-symbol symbol (left-branch tree))))
		((symbol-in-tree? symbol (right-branch tree))
		 (cons 1
			   (encode-symbol symbol (right-branch tree))))
		(else
		  (error "This symbol not in tree: " symbol))))

(define (symbol-in-tree? symbol tree)
  (define (in-set? x set)
	(cond ((null? set) #f)
		  ((eq? x (car set)) #t)
		  (else
			(in-set? x (cdr set)))))
  (in-set? symbol (symbols tree)))

