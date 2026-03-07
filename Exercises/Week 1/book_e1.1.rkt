#lang simply-scheme
; 10
10
; 12
(+ 5 3 4)
; 8
(- 9 1)
; 3
(/ 6 2)
; (2 * 4) + (4 - 6)) = 6
(+ (* 2 4) (- 4 6))
; let a = 3
(define a 3)
; let b = a + 1 (4)
(define b (+ a 1))
; a + b + (a * b) = 19 
(+ a b (* a b))
; #f
(= a b)
; if b > a and b < a * b, show b else show a
; cond 1 T, cond 2 T, b returned, 4 shown
(if (and (> b a) (< b (* a b)))
    b
    a)
; if a = 4 return 6, if b = 4 return 6 + 7 + a, else return 25
; 2nd cond T so 16 shown
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
; if b > a return b else return a, returned number added with 2 and shown
; b > a, b returned and 6 shown
(+ 2 (if (> b a) b a))
; if a > b return a, if a < b return b, else return -1, show (a + 1) * returned
; 2nd cond true , b returned 16 shown
(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))