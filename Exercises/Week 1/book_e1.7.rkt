#lang simply-scheme
; If the square root is good enough, return the guess,
; else recurse with the improved guess
(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
      guess
      (sqrt-iter (improve guess x) x)))

; To improve the guess, get the average between the guess and (x / guess)
(define (improve guess x)
  (average guess (/ x guess)))

; Function for average between 2 numbers
(define (average x y)
  (/ (+ x y) 2))

; If the percent difference between next guess and current guess is less than
; 0.000001%, then the guess is good enough, this solves the floating point
; issue for too large and small numbers to guess if a constant is fixed
(define (good-enough? guess next-guess)
  (< (/ (abs (- guess next-guess)) guess) 0.00000001))

; Function for square
(define (square x) (* x x))

; Function for square root, starting with guess of 1
(define (sqrt x) (sqrt-iter 1.0 x))

(trace sqrt-iter)
(sqrt 0.00000000123456)
(sqrt 9)
(sqrt 10000000000000000)