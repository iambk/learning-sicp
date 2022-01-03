# Exercise 1.7

Q: The good-enough? test used in computing square roots will not be very effective for finding the square roots of very small numbers. Also, in real computers, arithmetic operations are almost always performed with limited precision. This makes our test inadequate for very large numbers. Explain these statements, with examples showing how the test fails for small and large numbers. An alternative strategy for implementing good-enough? is to watch how guess changes from one iteration to the next and to stop when the change is a very small fraction of the guess. Design a square-root procedure that uses this kind of end test. Does this work better for small and large numbers?

A: The predetermined tolerance for the `good-enough?` procedure is pretty high when considering square root for small numbers. Here is a trace call[^1] to visualize good-enough procedure calls for `(sqrt 0.0001)`:
```scheme
> (sqrt 0.0001)
|(good-enough? 1.0 1e-4)
|#f
|(good-enough? 0.50005 1e-4)
|#f
|(good-enough? 0.2501249900009999 1e-4)
|#f
|(good-enough? 0.12526239505846617 1e-4)
|#f
|(good-enough? 0.06303035962394365 1e-4)
|#f
|(good-enough? 0.03230844833048122 1e-4)
|#t
0.03230844833048122
```
The square root returned `0.03230844833048122` is far from the actual square root of 0.0001 which is 0.01. An error of over 200%.

On the other hand for large numbers machine precision is unable to represent small differences between large numbers causing the `good-enough?` procedure to never terminate for some cases:
```scheme
> (sqrt 10000000000000)
|...
|...
|(good-enough? 31622776.601683795 1000000000000000)
|#f
|(good-enough? 31622776.601683795 1000000000000000)
|#f
|...
|...
```
even though the guess reaches pretty close to actual square root of 1e13, the condition evaluates to false and guess can't be improved further either.

There are lot of alternatives to improve `good-enough?` procedure, one is to observe between iterations the guess and check if the fractional change is small enough, as mentioned in the question already. This does give better results.

Trace calls using new good-enough? procedure:
```scheme
> (sqrt 0.0001)
|(good-enough? 1.0 1e-4)
|#f
|(good-enough? 0.50005 1e-4)
|#f
|...
|...
|(good-enough? 0.010000000025490743 1e-4)
|#f
|(good-enough? 0.01 1e-4)
|#t
0.01
> (sqrt 1e13)
|(good-enough? 1.0 1e13)
|#f
|(good-enough? 5.0000000000005e12 1e13)
|#f
|...
|...
|(good-enough? 3162277.6640104805 1e13)
|#f
|(good-enough? 3162277.6601683795 1e13)
|#t
3162277.6601683795
```

[^1]: Refer to the [ChezScheme docs](http://cisco.github.io/ChezScheme/csug9.5/debug.html#./debug:h1) on how to use tracing to debug procedures.
