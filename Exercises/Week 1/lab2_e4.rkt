#lang simply-scheme
; My version incurs an additional sentence
(define (dupls-removed sent)
  (define new-sent '())
  (check-empty sent new-sent)
  )

(define (check-empty sent new-sent)
  (if (empty? sent)
      new-sent
      (check-empty (bf sent) (check-dupls (first sent) new-sent))))

(define (check-dupls wd new-sent)
  (if (member? wd new-sent)
      new-sent
      (sentence new-sent wd)
      ))

(trace check-empty)
(dupls-removed '(a e i o u u u u hi hi))

; Optimised version has no additional sentence
(define (dupls-removed-opt sent)
  (if (empty? sent)
      '()
      (if (member? (first sent) (bf sent))
          (sentence (dupls-removed-opt (bf sent)) '())
          (sentence (first sent) (dupls-removed-opt (bf sent))))))


(trace dupls-removed-opt)
(dupls-removed-opt '(a o e i o u hi hi))
(dupls-removed-opt '(a))
