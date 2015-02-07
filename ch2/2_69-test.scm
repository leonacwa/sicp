;ex2.69 test

(load "s2_3_4-huffman.scm")
(load "2_69-generate-huffman-tree.scm")

(define pairs1 '((A 4) (B 2) (C 1) (D 1)))

(display pairs1)
(newline)

(define result 
  (generate-huffman-tree pairs1))
