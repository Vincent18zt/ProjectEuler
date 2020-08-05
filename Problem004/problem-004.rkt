#lang racket
(define palindrome?
  (λ (x)
    (let ([str (number->string x)])
      (let ([string-reverse (λ (str)
                              (list->string (reverse (string->list str))))])
        (string=? str (string-reverse str))))))

;; (palindrome? 9009)
;; => #t

(apply max (for*/list ([i (in-range 100 999)]
           [j (in-range 100 999)]
           #:when (palindrome? (* i j)))
             (* i j)))

;; => 906609