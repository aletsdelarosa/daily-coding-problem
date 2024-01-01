# Calculate Rand5 function

**Asked by:** two Sigma

## Problem definition

Using a function rand7() that returns an integer from 1 to 7 (inclusive) with uniform probability, implement a function rand5() that returns an integer from 1 to 5 (inclusive).

## Solution

### Approach

`rand7()` generates a number `{1, 2, 3, 4, 5, 6, 7}` with a probability of 1/7. We need that `rand5()` generates a number `{1, 2, 3, 4, 5}` with a probability of 1/5.

We have a 5/7 chance of getting a number in the range. In 2 out of 7 we need to recalculate the value.

So, the probability of getting a number and that number between 1 and 5 is P(X | X <= 5) = (1/7) / (5/7) = 1/5. So we can guarantee that getting that rand5 is uniform. The only thing we need to do is to recalculate if it's 6 or 7 and that happens 2/7 of the time.

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
