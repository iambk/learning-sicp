# Exercise 1.1

Q: Below is a sequence of expressions. What is the result printed by the interpreter in response to each expression? Assume that the sequence is to be evaluated in the order in which it is presented.

```scheme
> 10
10
```
```scheme
> (+ 5 3 4)
12
```
```scheme
> (- 9 1)
8
```
```scheme
> (/ 6 2)
3
```
```scheme
> (+ (* 2 4) (- 4 6))
6
```
```scheme
> (define a 3)
Output is highly interpreter implementation dependent.
```
```scheme
> (define b (+ a 1))
Output is highly interpreter implementation dependent.
```
```scheme
> (+ a b (* a b))
19
```
```scheme
> (= a b)
#f
```
```scheme
> (if (and (> b a) (< b (* a b)))
    b
    a)
4
```
```scheme
> (cond ((= a 4) 6)
    ((= b 4) (+ 6 7 a))
    (else 25))
16
```
```scheme
> (+ 2 (if (> b a) b a))
6
```
```scheme
> (* (cond ((> a b) a)
        ((< a b) b)
        (else -1))
     (+ a 1))
16
```
