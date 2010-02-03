(require (lib "1.ss" "srfi"))
(require (lib "42.ss" "srfi"))
;(require 'srfi-42)
;(require 'srfi-1)

(define (range_lcm a)
	(foldl lcm a (iota a 1)))

(display (range_lcm 20))

(exit)
