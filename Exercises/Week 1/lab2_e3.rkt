#lang simply-scheme
(define (sum-of-two-larger-nums a b c)
  (cond ((and (> a c) (> b c)) (+ (square a) (square b)))
        ((and (> a b) (> c b)) (+ (square a) (square c)))
        (else (+ (square b) (square c)))))

(define (square x) (* x x))

;tests
(sum-of-two-larger-nums 1 2 3)
(sum-of-two-larger-nums 3 2 1)
(sum-of-two-larger-nums 2 3 1)
(sum-of-two-larger-nums 1 3 2)
(sum-of-two-larger-nums 1 2 2)
(sum-of-two-larger-nums 2 1 2)
(sum-of-two-larger-nums 2 2 1)
(sum-of-two-larger-nums 2 2 2)