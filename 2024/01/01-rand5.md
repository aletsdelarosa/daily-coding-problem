# Calculate Rand5 function

**Asked by:** two Sigma

## Problem definition

Using a function rand7() that returns an integer from 1 to 7 (inclusive) with uniform probability, implement a function rand5() that returns an integer from 1 to 5 (inclusive).

## Solution

### Approach

`rand7()` generates a number `{1, 2, 3, 4, 5, 6, 7}` with a probability of 1/7. We need that `rand5()` generates a number `{1, 2, 3, 4, 5}` with a probability of 1/5.

We have a 5/7 chance of getting a number in the range. In 2 out of 7 we need to recalculate the value.

P(1...5) = 1/7 + 2/7 \* (1/7 + 2/7 \* (...))

The probability of getting a number between 1 and 5 is 1/7 (The probability from `rand7()`) plus the probability of not getting a number between 1 and 5 (2/7) multiplied by the change of getting a number in the second round plus the probability of not getting it times the probability of the third round.... This could be reduced to 1/5.

### Complexity

### Code

```Swift
func rand5() {
    var currentNumber = 0

    repeat {
        currentNumber = rand7()
    } while (currentNumber > 5)

    return currentNumber
}
```
