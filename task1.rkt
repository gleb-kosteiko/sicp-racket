 #lang racket/base

(require racket/list
         rackunit)

;; BEGIN (write your solution here)
(define (sum-of-squares-of-top-two x y z)
          (let* ([lst (sort (list x y z) >)]
                 [n1 (first lst)]
                 [n2 (second lst)])
            (+ (* n1 n1) (* n2 n2))))
;; END

(check-equal? (sum-of-squares-of-top-two 1 2 3) 13)
(check-equal? (sum-of-squares-of-top-two 3 4 2) 25)
(check-equal? (sum-of-squares-of-top-two 5 3 4) 41)
