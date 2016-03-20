#lang racket/base

(define (fib_iter a b count)
  (cond
    ((= count 0) b)
    (else (fib_iter (+ a b) a (- count 1)))))

(define (fibonacci n)
  (fib_iter 1 0 n))


(define (sum-even-valued-terms-under start limit acc)
  (let ([n (fibonacci start)]) 
    (cond
    ((>= n limit) acc)
    (else (sum-even-valued-terms-under (+ start 3) limit (+ acc n))))))

(display (sum-even-valued-terms-under 3 4000000 0))
(newline)
