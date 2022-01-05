(load "cube-root.scm")

;;should improve guess
(display (equal? 1.3333333333333333 (improve 1.0 2)))
(newline)

;;should return relative errro
(display (equal? 50 (relative-error 5 10)))
(newline)

;;should return #t if guess is good enough
(display (equal? #t (good-enough? 3.0000000013 27)))
(newline)

;;should return #f if guess is not good enough
(display (equal? #f (good-enough? 3.013 27)))
(newline)

;;should return cube root with acceptable-threshold
(display (< (relative-error (cbrt 0.000000001) 0.001) acceptable-threshold))
(newline)
(display (< (relative-error (cbrt 1e13) 21544.3469003) acceptable-threshold))
(newline)
