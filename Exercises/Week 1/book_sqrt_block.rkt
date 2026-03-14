#lang simply-scheme
; Function for square root, starting with guess of 1
; Note that this uses a block structure to internalize procedure names
(define (sqrt x)
  ; Function for averaging 2 numbers
  (define (average a b)
    (/ (+ a b) 2))

  ; To improve the guess, get the average between the guess and (x / guess)
  (define (improve guess)
    (average guess (/ x guess)))
  
  ; If the percent difference between next guess and current guess is less than
  ; 0.000001%, then the guess is good enough, this solves the floating point
  ; issue for too large and small numbers to guess if a constant is fixed
  (define (good-enough? guess next-guess)
    (< (/ (abs (- guess next-guess)) guess) 0.00000001))

  ; If the square root is good enough, return the guess,
  ; else recurse with the improved guess
  (define (sqrt-iter guess)
    (if (good-enough? guess (improve guess))
        guess
        (sqrt-iter (improve guess))))

  ; Start tracing
  (trace sqrt-iter)
  ; Start the sqrt-iter function here
  (sqrt-iter 1.0))

(sqrt 0.00000000123456)
(sqrt 9)
(sqrt 10000000000000000)