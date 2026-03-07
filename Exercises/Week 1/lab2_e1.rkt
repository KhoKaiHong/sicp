#lang simply-scheme
; a = 3
(define a 3)
; b = 3 + 1 = 4
(define b (+ a 1))
; 3 + 4 + (3 * 4) = 19
(+ a b (* a b))
; if b > a and b < a * b, show a otherwise show b
; cond 1 eval to T, cond 2 eval to T, so b(4) is shown
(if (and (> b a) (< b (* a b)))
    b
    a)
; if a = 4 show 6, if b = 4 show 6 + 7 + a, else show 25
; cond 2 eval to T, so 16 is shown
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
; if b > a return b else a, returned number added to 2 then displayed
; b > a, so 6 is displayed
(+ 2 (if (> b a) b a))
; if a > b return a, if a < b return b, otherwise return -1. Show returned * (a + 1)
; a < b, so b returned, and 16 displayed
(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))
; if a < b return +, else return -, returned procedure is done on a and b
; a < b, so + returned, and 7 is shown
((if (< a b) + -) a b)