;; reverses a string
(define (reverse_string str)
    (list->string (reverse (string->list str))))

;; checks if a number is a palindrome
(define (palindrome? n)
    (string=? (number->string n) (reverse_string (number->string n))))

(define (solve limit)
    (let loop ((a 999) (max 0))
            (cond
            ;; return max if a < 100
            ((< a limit) max)
            (else (loop (- a 2) (let loop2 ((b a) (max max))
                (cond 
                ;; return max if b < 100
                ((< b limit) max)
                (else (let ((n (* a b)))
                    (cond 
                    ((and (> n max) (palindrome? n)) (loop2 (- b 2) n))
                    (else (loop2 (- b 2) max))))))))))))

(display (solve 100))
