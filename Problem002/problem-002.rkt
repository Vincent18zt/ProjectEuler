#lang racket

(define (fib/stream a b)
  (stream-cons a (fib/stream b (+ a b))))

(define (stream->list-p s p)
  (stream->list-p/recr s p '())
  )

(define (stream->list-p/recr s p lst)
  (if (p (stream-first s))
      (stream->list-p/recr (stream-rest s)
                              p
                              (cons (stream-first s) lst))
      (reverse lst)))

;; RUN
(apply + (filter even? (stream->list-p (fib/stream 1 2)
                                       (lambda (x) (< x 4000000)))))
;; => 4613732