(define (solve n)
    (let loop ((a 1) (result 0))
        (cond
            ((>= a n) result)
            (else
                (let loop2 ((b a)) 
                    (cond ((>= b n) 
                        (loop (+ a 1) result))
                        (else
                            (let ((c (- n a b))) 
                                (cond 
                                    ((and 
                                        (= (* c c) (+ (* a a) (* b b))) 
                                        (< a b)
                                        (< b c))
                                            (* a b c))
                                    (else (loop2 (+ b 1))))))))))))
(display (solve 1000))
(newline)
