#lang simply-scheme
; Original plural code
(define (plural-original wd)
  (word wd 's))

; Improved plural code - handles last letter y case
(define (plural wd)
  (if (and (equal? (last wd) 'y) (> (count wd) 1))
      (handle-y wd)
      (word wd 's)))

(define (handle-y wd)
  (if (vowel? (last (bl wd)))
      (word wd 's)
      (word (bl wd) 'ies)))

(define (vowel? char)
  (member? char '(a e i o u)))

(plural 'car)
(plural 'boy)
(plural 'baby)
(plural 'fly)
(plural 'y)