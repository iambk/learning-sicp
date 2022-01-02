(load "solution.scm")

;; should return square of a number
(display (equal? 25 (square 5)))
(newline)

;; should return sum of squares of two numbers
(display (equal? 29 (sum-of-squares 5 2)))
(newline)

;; should return sum of squares of two larger numbers
(display (equal? 34 (sos-of-larger-two 2 5 3)))
(newline)
(display (equal? 32 (sos-of-larger-two 4 3 4)))
(newline)
(display (equal? 32 (sos-of-larger-two 4 4 3)))
(newline)
