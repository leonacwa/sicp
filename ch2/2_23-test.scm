;test for ex 2.23

(load "2_23-for-each.scm")

(for-each (lambda (x) (newline) (display x))
		  (list 57 321 88))
(newline)
