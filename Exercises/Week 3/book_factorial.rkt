#lang simply-scheme
; A linear recursive process for factorial
(define (factorial-rec n)
  (if (= n 1)
      1
      (* n (factorial-rec (- n 1)))
      ))

(trace factorial-rec)
; (fac 5)
; (* 5 (fac 4))
; (* 5 (* 4 (fac 3)))
; (* 5 (* 4 (* 3 (fac 2))))
; (* 5 (* 4 (* 3 (* 2 (fac 1)))))
; (* 5 (* 4 (* 3 (* 2 1))))
; (* 5 (* 4 (* 3 2)))
; (* 5 (* 4 6))
; (* 5 24)
; 120
(factorial-rec 5)

; A linear iterative process for factorial, using block structure
(define (factorial-iter n)
  (define (iter product counter)
    (if (> counter n)
        product
        (iter (* counter product) (+ counter 1))))
  
  ; Start tracing iteration
  (trace iter)
  ; Start iteration
  (iter 1 1))

; (fac 1 1)
; (fac 1 2)
; (fac 2 3)
; (fac 6 4)
; (fac 24 5)
; (fac 120 6)
; 120
(factorial-iter 5)