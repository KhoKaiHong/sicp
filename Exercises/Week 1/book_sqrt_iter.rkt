#lang simply-scheme
; If the square root is good enough, return the guess,
; else recurse with the improved guess
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

; To improve the guess, get the average between the guess and (x / guess)
(define (improve guess x)
  (average guess (/ x guess)))

; Function for average between 2 numbers
(define (average x y)
  (/ (+ x y) 2))

; If the difference between guess^2 and x is less than 0.000001,
; then the guess is good enough
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.000001))

; Function for square
(define (square x) (* x x))

; Function for square root, starting with guess of 1
(define (sqrt x) (sqrt-iter 1 x))

(trace sqrt-iter)

(sqrt 4)
(sqrt 9)
