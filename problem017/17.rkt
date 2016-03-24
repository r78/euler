#lang racket
(define first-ten '("one" "two" "three" "four" "five" "six" "seven" "eight" "nine" "ten"))
(define second-ten '("eleven" "twelve" "thirteen" "fourteen" "fifteen" "sixteen" "seventeen" "eighteen" "nineteen"))
(define units '("one" "two" "three" "four" "five" "six" "seven" "eight" "nine"))
(define tens '("twenty" "thirty" "forty" "fifty" "sixty" "seventy" "eighty" "ninety"))
(define thousand '("one" "thousand"))

(define (remove-symbols str)
    (regexp-replace* #rx" |\\-" str ""))

(define (count lst)
    (string-length (remove-symbols (foldl string-append "" lst))))

(define other-tens
    (flatten (cons 
        (map (lambda (t)
            (map (lambda (u) (string-append t "-" u)) units)) tens)
        tens)))

(define hundreds 
    (map (lambda (x) (string-append x " hundred")) units))

(define more-than-hundred 
    (append hundreds 
        (flatten (map (lambda (h) 
            (map (lambda (t) (string-append h " and " t)) (append first-ten second-ten other-tens))) hundreds))))

(define total (foldl + 0 (map (lambda (x) (count x)) (list first-ten second-ten other-tens more-than-hundred thousand))))

(display total)
(newline)
