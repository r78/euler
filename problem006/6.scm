(define (sum_of_squares n)
	(/ (* n (+ n 1) (+ (* 2 n) 1)) 6))

(define (square_of_sum n)
	(cond ((= (modulo n 2) 0) (expt (* (/ n 2) (+ n 1)) 2))
	(else (expt (+ (* (/ n 2) (+ n 1)) n) 2)))
)

(display (- (square_of_sum 100) (sum_of_squares 100)))
(exit)
