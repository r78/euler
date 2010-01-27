(define (sum_n n mul)
	(* (+ (- n (modulo n mul)) mul) (/ (quotient n mul) 2.0)))

(define (sum_all n)
	(- (+ (sum_n n 3) (sum_n n 5)) (sum_n n 15)))

(display (sum_all 999))
(exit)
