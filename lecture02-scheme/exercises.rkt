#lang racket
(provide (all-defined-out))

(define (square x) (* x x))

; Compute the length of the list xs
;   The length of the empty list is 0.
;   The length of a non-empty list is 1 + the length of the cdr of the list.
;
; Examples:
;   (length '()) => 0
;   (length '(1 2)) => 2
;   (length '(1 (2 3))) => 2
;

(define (length xs)
  'not-implemented)

;
; Compute the sum of a list of integers
;
; Example:
;   (sum '(1 2 3 4)) => 10

(define (sum xs)
  'not-implemented)

;
; Calculate the squares of a list of integers. Make the function non-recursive.
;
; Example:
;   (squares '(1 2 3 4 5)) => '(1 4 9 16 25)
;

(define (squares xs)
  'not-implemented)

; Concatenate the lists xs and ys (append ys to xs)
;   The concatenation of xs and ys is equal to ys if xs is null.
;   Otherwise it is the list whose first element (car) is the first
;   element of xs and whose tail (cdr) is equal to the concatenation
;   of the tail of xs and ys.
;
; Example:
;   (concat '(1 2 3) '(4 5 6)) => (1 2 3 4 5 6)
;

(define (concat xs ys)
  'not-implemented)

; Compose two functions. That is, ((compose f g) x) should be the same as
; (f (g x))
;
; Example:
;   ((compose square square) 10) => 10000

(define (compose f g)
  'not-implemented)
