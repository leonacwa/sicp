;ex 2.69 generate-huffman-tree

(define (generate-huffman-tree pairs)
  (successive-merge (make-leaf-set pairs)))

(define (successive-merge set)
  (if (= 1 (length set))
	(car set)
	(let ((left (car set))
		  (right (cadr set))
		  (remaining-set (cddr set)))
	  (let ((node (make-code-tree left right)))
		(successive-merge (adjoin-set node remaining-set))))))

