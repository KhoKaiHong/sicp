#lang simply-scheme
; Define a procedure that takes three numbers as arguments and returns the sum of
; the squares of the two larger numbers

(define (sum_of_squares_of_two_larger_nums x y z)
  (cond ((and (< z x) (< z y)) (sum_of_squares x y))
        ((and (< x y) (< x z)) (sum_of_squares y z))
        (else (sum_of_squares x z))))
  
(define (sum_of_squares x y) (+ (* x x) (* y y)))

; Test cases
(sum_of_squares_of_two_larger_nums 1 2 3)
(sum_of_squares_of_two_larger_nums 3 2 1)
(sum_of_squares_of_two_larger_nums 1 3 2)
(sum_of_squares_of_two_larger_nums 1 2 2)
(sum_of_squares_of_two_larger_nums 2 1 2)
(sum_of_squares_of_two_larger_nums 2 2 1)
(sum_of_squares_of_two_larger_nums 2 2 2)