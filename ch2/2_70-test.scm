
; 在MIT-Scheme中运行才不会区分大小写

(load "s2_3_4-huffman.scm")
(load "2_68-encode.scm")
(load "2_69-generate-huffman-tree.scm")
(load "2_70-sample.scm")

(define tree (generate-huffman-tree pairs))

(display (encode msg-1 tree))
(newline)

(display (encode msg-2 tree))
(newline)

(display (encode msg-3 tree))
(newline)

(display (encode msg-4 tree))
(newline)

