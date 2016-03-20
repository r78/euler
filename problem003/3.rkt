#lang racket/base
(define n 600851475143)

(define (aux i n maxfactor)
  (cond
  ((< i (quotient n 2)) 
    (cond 
      ((= 0 (modulo n i)) (aux i (quotient n i) (quotient n i)))
      (else (aux (+ i 1) n maxfactor))))
  (else maxfactor)))

(define (factor n)
  (aux 2 n n))

(display (factor n))
(newline)
