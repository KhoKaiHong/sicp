#lang simply-scheme
; New if function
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

; Works fine
(new-if (= 2 3) 0 5)
(new-if (= 1 1) 0 5)

; Below is from the file sqrt-iter, with the if implementation
; changed to use enw-if

; If the square root is good enough, return the guess,
; else recurse with the improved guess
(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
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
(define (sqrt x) (sqrt-iter 1.0 x))

(trace sqrt-iter)

; Infinite loop happens
; This is because new-if is a procedure, and applicative-order evaluation is used,
; so even before new-if is performed, it has to evaluate all the arguments first,
; which are guess and (sqrt-iter (improve guess x) x).
; The sqrt-iter is recursed again, which calls a new new-if procedure,
; this is how the infinite loop occurs.
; If the regular if is used, the interpreter starts by evaluating the predicate
; If the predicate is true, the interpreter then evaluates the consequent
; and returns its value. Otherwise it evaluates the alternative and returns its value.
; This is how the infinite loop is prevented when regular if is used
(sqrt 4)
