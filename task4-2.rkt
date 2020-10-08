#lang racket/base

(require rackunit)

(define (square x) (* x x))
(define (inc x) (+ x 1))

;; BEGIN (write your solution here)
(define (repeated fn n)
          (if (= n 1)
              fn
              (lambda (x) (fn ((repeated fn (- n 1)) x)))))
;; END

(check-equal? ((repeated inc 2) 5) 7)
(check-equal? ((repeated inc 10) 10) 20)
(check-equal? ((repeated square 2) 5) 625)
(check-equal? ((repeated square 3) 3) 6561)
