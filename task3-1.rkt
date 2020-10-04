#lang racket/base

(require rackunit)

;; BEGIN (write your solution here)
(define (f n)
          (cond
             [(< n 3) n]
             [else (+ 
                    (f (- n 1)) 
                    (* (f (- n 2)) 2) 
                    (* (f (- n 3)) 3))]))
;; END

(check-equal? (f 1) 1)
(check-equal? (f 2) 2)
(check-equal? (f 3) 4)
(check-equal? (f 4) 11)
(check-equal? (f 5) 25)
(check-equal? (f 6) 59)
(check-equal? (f 7) 142)
