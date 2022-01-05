# Exercise 1.5

Q: Ben Bitdiddle has invented a test to determine whether the interpreter he is faced with is using applicative-order evaluation or normal-order evaluation. He defines the following two procedures:
```scheme
(define (p) (p))
(define (test x y)
    (if (= x 0) 0 y))
```
Then he evaluates the expression
```scheme
(test 0 (p))
```
What behavior will Ben observe with an interpreter that uses applicative-order evaluation? What behavior will he observe with an interpreter that uses normal-order evaluation? Explain your answer. (Assume that the evaluation rule for the special form if is the same whether the interpreter is using normal or applicative order: The predicate expression is evaluated first, and the result determines whether to evaluate the consequent or the alternative expression.)

A: applicative-order evaluation causes an infinite loop since the procedure `(p)` is evaulated to itself and causes the procedure call to happen again leading to an infinite recursion,

normal-order evaulation however will cause the procedure `test` to be expanded first:
```scheme
(if (= 0 0) 0 (p))
```
making the value of the expression to be 0.
