#lang racket

(define (multiples-a-b num-a num-b end)
  (remove-duplicates (append (multiples num-a end)
                             (multiples num-b end))))

(define (multiples num end)
  (recr/multiples num end 1))

(define (recr/multiples num end index)
  (cond
    ([>= (* index num) end] '())
    (else (cons (* index num)
                (recr/multiples num end (add1 index))))))

;; RUN
(apply + (multiples-a-b 3 5 1000))
;; => 233168