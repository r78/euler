#lang racket/base
(require racket/match)
(require racket/string)
(require racket/list)

(define t1 "3
7 4
2 4 6
8 5 9 3")

(define t "75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23")

(define triangle (map (lambda (x) (map (lambda (y) (string->number y)) (string-split x " "))) (string-split t "\n")))

(define (pairs-aux l acc)
    (match l
    ['() acc]
    [(list x) (pairs-aux '() acc)]
    [(list-rest x y xs) (pairs-aux (cons y xs) (cons (list x y) acc))]))

; [1,2,3,4] -> [[1,2], [2,3], [3,4]]
(define (pairs lst)
    (reverse (pairs-aux lst '())))

(define (list-max lst)
    (cond
    ((null? lst) 0)
    (else (argmax add1 lst)))
)

; [5,2,9,4] -> [5,9,9]
(define (maxpairs lst)
    (map (lambda (x) (list-max x)) (pairs lst)))

; [8,9,9] [2,4,6] -> [10,13,15]
; s'aplica sobre [1,2,3] [4,5,6] -> [[1,4],[2,5],[3,6]]
;(foldr (lambda (a b acc) (cons (list a b) acc)) '() a b)
(define (row-merge a b)
    (map (lambda (x) (foldl + 0 x)) (foldr (lambda (a b acc) (cons (list a b) acc)) '() (maxpairs a) b)))

(define (solve t acc)
    (match t
    ['() acc]
    [(list-rest x xs) (solve xs (row-merge acc x))]))

(define solution (solve (cdr (reverse triangle)) (car (reverse triangle))))

(display (car solution))
(newline)
