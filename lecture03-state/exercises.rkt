#lang racket
(provide (all-defined-out))

;; Return #t when x appears in xs.
(define (list-member? x xs)
  (cond [(null? xs) #f]
        [(equal? x (first xs)) #t]
        [else (list-member? x (rest xs))]))

;; Return #t when xs has no repeated elements.
(define (no-duplicates? xs)
  (cond [(null? xs) #t]
        [(list-member? (first xs) (rest xs)) #f]
        [else (no-duplicates? (rest xs))]))

;; Treat lists without duplicates as finite sets.
(define (list-set? xs)
  (and (list? xs) (no-duplicates? xs)))

;; Return #t when every element of xs appears in ys.
(define (contains? xs ys)
  (cond [(null? xs) #t]
        [else (and (list-member? (first xs) ys)
                   (contains? (rest xs) ys))]))

;; Return #t when xs and ys represent the same finite set.
(define (set-equal? xs ys)
  (and (contains? xs ys) (contains? ys xs)))

;; A correct but wasteful power-set implementation. It computes
;; (power-set-slow (rest xs)) twice in the recursive case.
(define (power-set-slow xs)
  (if (null? xs)
      '(())
      (append (power-set-slow (rest xs))
              (map (lambda (subset) (cons (first xs) subset))
                   (power-set-slow (rest xs))))))

;; Implement the same function using let so the recursive result is computed
;; once and reused.
(define (power-set xs)
  'not-implemented)

;; Return a withdrawal procedure with a private balance.
(define (make-withdraw balance)
  'not-implemented)

;; Return a small account object. The object accepts the messages 'withdraw,
;; 'deposit, and 'balance.
(define (make-account balance)
  'not-implemented)
