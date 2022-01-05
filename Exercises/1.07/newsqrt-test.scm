(load "newsqrt.scm")

;;should return average of two numbers
(display (equal? 4 (average 5 3)))
(newline)

;;should improve guess
(display (equal? 2.666666666666667 (improve 3.0 7)))
(newline)

;;should return relative-error
(display (equal? 50 (relative-error 5 10)))
(newline)

;;should return #t if guess is good-enough
(display (equal? #t (good-enough? 3.000000001396984 9)))
(newline)

;;should return #f if guess is not good-enough
(display (equal? #f (good-enough? 3.2 9)))
(newline)

;;should return square root with acceptable-threshold
(display (< (relative-error (sqrt 0.0001) 0.01) acceptable-threshold))
(newline)
(display (< (relative-error (sqrt 1e13) 3162277.66017) acceptable-threshold))
(newline)
