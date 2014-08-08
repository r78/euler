(require srfi/1)

; a vector of numbers from 2 to n
(define (one-to-n n)
    (build-vector (quotient n 2) (lambda (x) (+ 1 (* 2 x)))))

(define (two-to-n n)
    (vector-append #(2) (vector-drop (one-to-n n) 1)))
 
(define (square n)
    (cond
      (n (* n n))
      (else 0)))

; is n divisible by x?
(define (divisible? x)
    (lambda (n) 
    (zero? (modulo n x))))

(define (sieve1 vec n)
    (let loop ((i 0))
        (cond
            ;((>= (+ i 1) (vector-length vec)) vec)
            ((>= (square (vector-ref vec i)) n) vec)
            (else
                (cond
                    ((not (vector-ref vec i)) (loop (+ i 1)))
                    (else (begin
                            (let loop2 ((j i))
                                (cond
                                    ((not (vector-ref vec j)) 
                                        (cond 
                                            ((< (+ j 1) (vector-length vec)) (loop2 (+ j 1)))
                                            (else (loop (+ i 1)))))
                                    (else
                                        (cond
                                            ((>= (+ j 1) (vector-length vec))
                                                (cond ((and (not (= (vector-ref vec j) (vector-ref vec i))) (zero? (modulo (vector-ref vec j) (vector-ref vec i))))
                                                  (begin
                                                  (vector-set! vec j #f)
                                                  (loop (+ i 1))))
                                                  (else (loop (+ i 1)))))
                                            (else
                                                (cond
                                                    ((and 
                                                      (>= (vector-ref vec j) (square (vector-ref vec i))) 
                                                      (not (= (vector-ref vec j) (vector-ref vec i))) 
                                                      (zero? (modulo (vector-ref vec j) (vector-ref vec i))))
                                                        (begin
                                                        (vector-set! vec j #f)
                                                        (loop2 (+ j 1))))
                                                    (else
                                                        (loop2 (+ j 1))))))))))))))))

(define n 2000000)
(define prime-list (vector->list (vector-filter-not false? (sieve1 (two-to-n n) n))))
(display (fold + 0 prime-list))
