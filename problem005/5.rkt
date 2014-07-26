(require srfi/1)
(require srfi/42)

(define (range_lcm a)
	(foldl lcm a (iota a 1)))

(display (range_lcm 20))

(exit)
