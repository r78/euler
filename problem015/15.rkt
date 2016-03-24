#lang racket/base

(define (fac n acc)
    (cond 
        ((>= n 1) (fac (- n 1) (* n acc)))
        (else acc)))

(define (factorial n)
    (fac n 1))

(define (routes n)
    (quotient (factorial (* 2 n)) (expt (factorial n) 2)))

(display (routes 20))
(newline)
