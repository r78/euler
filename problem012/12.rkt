#lang racket/base
(require srfi/1)

; get the number of divisors of a number
(define (count_divisors num)
    (let loop ((i 2) (num num) (exponents (list)))
        (cond
            ((< i (sqrt num)) (let loopdiv ((p 0) (num2 num))
                                (cond
                                    ((zero? (modulo num2 i)) (loopdiv (+ p 1) (/ num2 i)))
                                    (else (cond
                                            ((> p 0) (loop (+ i 1) num2 (cons p exponents)))
                                            (else (loop (+ i 1) num2 exponents)))))))
            (else
                (let ((exponents
                       (cond
                         ((= num 1) exponents)
                         (else (cons 1 exponents)))))
                    (cond
                      ((null? exponents) 2)
                      (else (fold (lambda (e acc) (* acc (+ e 1))) 1 exponents))))))))

(define (solve)
    (let loop ((i 1) (triangle 1))
        (define divisors (count_divisors triangle))
        (cond
            ((> divisors 500) triangle)
            (else (loop (+ i 1) (quotient (* i (+ i 1)) 2))))))

(display (solve))
