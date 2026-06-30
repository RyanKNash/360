#lang racket
(require rackunit)
(require "exercises.rkt")

(provide exercise-tests)

(define (normalize-subset xs)
  (sort xs symbol<?))

(define (normalize-subsets xss)
  (sort (map normalize-subset xss)
        string<?
        #:key (lambda (xs) (format "~s" xs))))

(define expected-power-set
  '(() (a) (b) (c) (a b) (a c) (b c) (a b c)))

(define exercise-tests
  (test-suite
   "Lecture 3 Exercises"

   (test-suite
    "power-set"
    (check-equal? (normalize-subsets (power-set '(a b c)))
                  (normalize-subsets expected-power-set))
    (check-equal? (length (power-set '(a b c d)))
                  16))

   (test-suite
    "make-withdraw"
    (let ([w1 (make-withdraw 100)]
          [w2 (make-withdraw 100)])
      (check-equal? (w1 40) 60)
      (check-equal? (w1 40) 20)
      (check-equal? (w1 30) "Insufficient funds")
      (check-equal? (w2 40) 60)))

   (test-suite
    "make-account"
    (let ([account (make-account 100)])
      (check-equal? ((account 'balance)) 100)
      (check-equal? ((account 'withdraw) 30) 70)
      (check-equal? ((account 'deposit) 25) 95)
      (check-equal? ((account 'withdraw) 200) "Insufficient funds")
      (check-equal? ((account 'balance)) 95)))))
