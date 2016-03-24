#lang racket/base
(display (foldl + 0 (map (lambda (x) (- (char->integer x) 48)) (string->list(number->string (expt 2 1000))))))
(newline)
