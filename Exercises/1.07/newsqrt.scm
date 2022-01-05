(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (relative-error curr-guess prev-guess)
  (* (/ (abs (- curr-guess prev-guess)) prev-guess)
	 100))

(define (good-enough? guess x)
  (< (relative-error (improve guess x) guess)
	 acceptable-threshold))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
	guess
	(sqrt-iter (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define acceptable-threshold 1e-7)
