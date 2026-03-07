#lang simply-scheme
; an infinite loop of recursion is defined here, if p is called, it calls itself
(define (p) (p))
; if x is 0, return 0, else return y
(define (test x y)
  (if (= x 0) 0 y))

; Test cases and explanations (Note: Scheme uses applicative order, so the scenario
; of applicative order happens)

; - applicative order: 1-1=0, then 2-1=1, since x = 0, 0 returned
; - normal order: no evaluation happens until the (= x 0) step,
;   where x is evaluated as 1-1=0, 0 is returned
(test (- 1 1) (- 2 1))

; - applicative order: 3-1=2, then 2-1=1, since x != 0, 1 returned
; - normal order: no eval happens until the (= x 0) step,
;   where x is evaluated as 3-1=2, since x != 0, the 2-1=1 evaluation happens,
;   1 is returned
(test (- 3 1) (- 2 1))

; - applicative order: p is evaluated, infinite recursion happens
; - normal order: no eval happens until the (= x 0) step,
;   where x is evaluated as 0, since x = 0, 0 is returned, no recursion happens
(test 0 (p))
