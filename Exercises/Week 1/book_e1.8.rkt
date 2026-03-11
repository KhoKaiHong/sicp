#lang simply-scheme
; If the cube root is good enough, return the guess,
; else recurse with the improved guess
(define (cube-rt-iter guess x)
  (if (good-enough? guess (improve guess x))
      guess
      (cube-rt-iter (improve guess x) x)))

; To improve the guess, use the formula (x/guess^2 + 2*guess)/3
(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

; If the percent difference between next guess and current guess is less than
; 0.000001%, then the guess is good enough
(define (good-enough? guess next-guess)
  (< (/ (abs (- guess next-guess)) guess) 0.00000001))

; Function for square
(define (square x) (* x x))

; Function for cube root, starting with guess of 1
(define (cube-rt x) (cube-rt-iter 1.0 x))

(trace cube-rt-iter)
(cube-rt 8)
(cube-rt 27)
(cube-rt 1000000000000000)
(cube-rt 0.00000000000001)