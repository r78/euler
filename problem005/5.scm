(use-modules
(srfi srfi-1)
(srfi srfi-42))

(define (range_lcm a)
	(fold lcm a (iota a 1)))

(display (range_lcm 20))

(exit)
