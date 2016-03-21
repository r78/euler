#lang racket/base

(define (collatz-aux start steps)
  (cond 
    ((= start 1) steps)
    (else (cond 
      ((= 0 (modulo start 2)) (collatz-aux (quotient start 2) (+ 1 steps)))
      (else (collatz-aux (+ (* 3 start) 1) (+ 1 steps)))))))

(define (collatz n)
  (collatz-aux n 1))

(define (longest-aux n max-chain-length num top)
  (cond 
    ((<= n top) (let ([new-max-chain-length (collatz n)]) (cond 
      ((> new-max-chain-length max-chain-length) (longest-aux (+ n 1) new-max-chain-length n top))
      (else (longest-aux (+ n 1) max-chain-length num top)))))
    (else num)))

(define (longest top)
  (longest-aux 2 0 2 top))

(display (longest 999999))
(newline)
