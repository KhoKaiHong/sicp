#lang simply-scheme
; This is a recursive process
; Logic: "To add 2 to 1, I first need to add 1 to 1, and then increment the result"
; The computer can't perform the inc until it knows the result of the inner add-rec.
; So, it has to remember every inc it needs to do later.
(define (add-rec a b)
  (if (= a 0)
      b
      (inc (add-rec (dec a) b))))

; This is an iterative process
; This process carries all the information it needs in its arguments.
; Logic: "To add 2 to 1, I'll just move 1 from a over to b."
; At any point, the computer could look at the current a and b and know
; where it is in the calculation.
(define (add-iter a b)
  (if (= a 0)
      b
      (add-iter (dec a) (inc b))))

; Procedures for incrementing and decrementing numbers
(define (inc a) (+ a 1))
(define (dec a) (- a 1))

; (add-rec 4 5)
; (inc (add-rec 3 5))
; (inc (inc (add-rec 2 5)))
; (inc (inc (inc (add-rec 1 5))))
; (inc (inc (inc (inc (add-rec 0 5)))))
; (inc (inc (inc (inc 5))))
; (inc (inc (inc 6)))
; (inc (inc 7))
; (inc 8)
; 9
(trace add-rec)
(add-rec 4 5)

; (add-iter 4 5)
; (add-iter 3 6)
; (add-iter 2 7)
; (add-iter 1 8)
; (add-iter 0 9)
; 9
(trace add-iter)
(add-iter 4 5)