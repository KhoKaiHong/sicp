#lang simply-scheme
; Tree recursive process for fibonacci sequence
(define (fib-rec n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib-rec (- n 1))
                 (fib-rec (- n 2))))))

(trace fib-rec)
; (fib 5)
; (+ (fib 4) (fib 3))
; (+ (+ (fib 3) (fib 2)) (+ (fib 2) (fib 1)))
; (+ (+ (+ (fib 2) (fib 1)) (+ (fib 1) (fib 0))) (+ (+ (fib 1) (fib 0)) 1))
; (+ (+ (+ (+ (fib 1) (fib 0)) 1) (+ 1 0)) (+ (+ 1 0) 1))
; (+ (+ (+ (+ 1 0) 1) 1) (+ 1 1))
; (+ (+ (+ 1 1) 1) 2)
; (+ (+ 2 1) 2)
; (+ 3 2)
; 5
(fib-rec 5)

; Iterative process for fibonacci sequence
(define (fib-iter n)
  (define (iter a b count)
    (if (= count 0)
        b
        (iter (+ a b) a (- count 1))))

  ; Start tracing iteration
  (trace iter)
  ; Start iteration
  (iter 1 0 n))

; (fib 1 0 5)
; (fib 1 1 4)
; (fib 2 1 3)
; (fib 3 2 2)
; (fib 5 3 1)
; (fib 8 5 0)
; 5
(fib-iter 5)