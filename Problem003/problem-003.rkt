#lang racket
(define (prime-factors num)
  (recr/prime-factors num 2 '()))

(define (recr/prime-factors num factor lst)
  (if (> num 1)
    (if (= (modulo num factor) 0)
        (recr/prime-factors (deplete num factor)
                            (add1 factor)
                            (cons factor lst))
        (recr/prime-factors num
                            (add1 factor)
                            lst))
    lst))

(define (deplete num factor)
  (if (= (modulo num factor) 0)
      (deplete (/ num factor) factor)
      num))

;; RUN
(first (prime-factors 600851475143))
;; => 6857
                          
  