(define (improve guess x)
  (/ (+ (/ x (* guess guess))
		(* 2 guess))
	 3))

(define (relative-error curr-guess prev-guess)
  (* (/ (abs (- curr-guess prev-guess)) prev-guess)
	 100))

(define (good-enough? guess x)
  (< (relative-error (improve guess x) guess)
	 acceptable-threshold))

(define (cbrt-iter guess x)
  (if (good-enough? guess x)
	guess
	(cbrt-iter (improve guess x) x)))

(define (cbrt x)
  (cbrt-iter 1.0 x))

(define acceptable-threshold 1e-7)
