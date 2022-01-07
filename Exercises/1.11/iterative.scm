(define (f n)
  (if (< n 3)
	n
	(f-iter 0 1 2 (- n 2))))

(define (f-iter a b c count)
  (if (= count 0)
	c
	(f-iter b c (+ c (* 2 b) (* 3 a)) (- count 1))))

