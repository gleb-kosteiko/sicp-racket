#lang racket/base

(require rackunit)

;; BEGIN (write your solution here)
(define (pascal-triangle row col)
  (if (or (= col 1) (= col row))
      1
      (+ (pascal-triangle (- row 1) (- col 1)) (pascal-triangle (- row 1) col))))
;; END

(check-equal? (pascal-triangle 1 1) 1)
(check-equal? (pascal-triangle 2 2) 1)
(check-equal? (pascal-triangle 3 2) 2)
(check-equal? (pascal-triangle 4 2) 3)
(check-equal? (pascal-triangle 5 2) 4)
(check-equal? (pascal-triangle 5 3) 6)
