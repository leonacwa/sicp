; sector 3.5 stream
; 流方式计算区间内第2个素数

; ******** header file begin ******
(load "s3_5-stream.scm")
(load "s3_5-util.scm")
(load "s3_5-stream-filter.scm")
(load "s3_5-stream-enumerate-interval.scm")
;********* header file end ********

(display
  (stream-car 
	(stream-cdr 
	  (stream-filter prime? 
					 (stream-enumerate-interval 10000 1000000))))
  )
(newline)
