;ex 2.68 test

(load "s2_3_3-tree.scm")
(load "s2_3_4-huffman.scm")
(load "2_67-sample.scm")
(load "2_68-encode.scm")

(define message '(A D A B B C A))

(display
  (encode message sample-tree))

(newline)
