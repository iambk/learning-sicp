# Exercise 1.4

Q: Observe that our model of evaluation allows for combinations whose operators are compound expressions. Use this observation to describe the behavior of the following procedure:

```scheme
(define (a-plus-abs-b a b)
    ((if (> b 0) + -) a b))
```

A: The if statement evaluates and returns either + or -, which in turn is applied to the operands resulting in the function a + |b|.
