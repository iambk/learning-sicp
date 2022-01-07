(load "iterative.scm")

;;f should return n if n < 3
(display (equal? 2 (f 2)))
(newline)

;;f should not return n if n is 3
(display (not (equal? 3 (f 3))))
(newline)

;;f-iter should return 11 if count is 2
(display (equal? 11 (f-iter 0 1 2 (- 4 2))))
(newline)

;;f should return 4 if n is 3
(display (equal? 4 (f 3)))
(newline)

;;f should return 1892 if n is 10
(display (equal? 1892 (f 10)))
(newline)
