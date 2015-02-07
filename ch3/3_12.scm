;ex 3.12 append

(load "s3_3_1-append.scm")
(load "s3_3_1-last-pair.scm")

(define x (list 'a 'b))

(define y (list 'c 'd))

(define z (append x y))

;>> z
;(a b c d)
;>>(cdr x)
;(b)
;
;>>(define w (append! x y))
;>> w
;(a b c d)
;>>(cdr x)
;(b c d)
;
;因为 last-pair返回的是x最后的pair，这个pair是x中的链接到的数据对象，就像是返回了对应的指针或者说引用，不是一个新建的对象，然后修改这个pair，这样就达到了修改x的目的
;
;说明scheme中返回的都是引用数据，返回的是这个对象，不会像其他语言一样会重新构造一个新的数据对象返回

