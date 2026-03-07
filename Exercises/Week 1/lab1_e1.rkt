#lang simply-scheme
; 3
3
; 2 + 3 = 6
(+ 2 3)
; 5 + 6 + 7 + 8 = 26
(+ 5 6 7 8)
; 0
(+)
; sqrt 16 = 4
(sqrt 16)
; (3 * 4) + 5 = 17
(+ (* 3 4) 5)
; #<procedure:+>
+
; '+
'+
; 'hello
'hello
; '(+ 2 3)
'(+ 2 3)
; '(good morning)
'(good morning)
; 2
(first 274)
; 74
(butfirst 274)
; 'h
(first 'hello)
; this errors
; (first hello)
; first(butfirst('hello)) = 'e
(first (bf 'hello))
; 2 + 5 = 7
(+ (first 23) (last 45))
; let pi = 3.14159, no output
(define pi 3.14159)
; 3.14159
pi
; 'pi
'pi
; 7 + 3.14159 = 10.14159
(+ pi 7)
; 3.14159 * 3.14159 = 9.869587728099999
(* pi pi)
; fn square(x) {return x*x}, no output
(define (square x) (* x x))
; 5 * 5 = 25
(square 5)
; 5 * 5 = 25
(square (+ 2 3))
