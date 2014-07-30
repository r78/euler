(define (has_factor n)
    (let loop ( (x 2) )
        (cond
            ((<= x (floor (sqrt n))) 
                    (cond 
                        ((= 0 (modulo n x)) #t)
                        (else (loop (+ x 1)))))
            (else #f))))

(define (is_prime n)
    (cond
    ((or (= n 1) (= n 2) (= n 3) (= n 5) (= n 7)) #t)
    ((or (= 0 (modulo n 2)) (= 0 (modulo n 3)) (= 0 (modulo n 5)) (= 0 (modulo n 7))) #f)
    (else (not (has_factor n)))))

(define (nth_prime n)
    (let loop ((pos 0) (p 0) (i 2))
        (cond 
            ((< pos n)
                (cond 
                    ((is_prime i) (loop (+ pos 1) i (+ i 1)))
                    (else (loop pos p (+ i 1)))))
            (else p))))

(display ( nth_prime 10001))
