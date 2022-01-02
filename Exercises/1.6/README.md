# Exercise 1.6

Q: Alyssa P. Hacker doesn’t see why if needs to be provided as a special form. “Why can’t I just define it as an ordinary procedure in terms of cond?” she asks. Alyssa’s friend Eva Lu Ator claims this can indeed be done, and she defines a new version of if:
```scheme
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
  (else else-clause)))
```
Eva demonstrates the program for Alyssa:
```scheme
(new-if (= 2 3) 0 5) 5
(new-if (= 1 1) 0 5) 0
```
Delighted, Alyssa uses new-if to rewrite the square-root program:
```scheme
(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)))
```
What happens when Alyssa attempts to use this to compute square roots? Explain.

A: The default if procedure is a special form where the else-clause is only evaulated if the predicate evaluates to false. The `new-if` however, is a defined procedure causing `sqrt-iter` to recurse itself infinitely when calling the `new-if` procedure everytime.

Example:
```scheme
Chez Scheme Version 9.5.7
Copyright 1984-2021 Cisco Systems, Inc.

> (define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
          (else else-clause)))
> (if (= 0 0) 1 (/ 1 0))
1
> (new-if (= 0 0) 1 (/ 1 0))
Exception in /: undefined for 0
```
