#lang simply-scheme
; if b > 0, return a + b, else return a - b
; this exhibits the same behaviour as a + |b|, since when b is -ve,
; subtraction will be used, causing its sign to be flipped to positive
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; Test cases
(a-plus-abs-b 1 2)
(a-plus-abs-b 1 -2)