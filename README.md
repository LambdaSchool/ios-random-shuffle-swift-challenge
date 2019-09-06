### Challenge

Write a function ```randomShuffle()``` that performs an _in place_ (mutating/destructive) random shuffle of an array. You are welcome to make use of `random()` that was introduced in Swift 4.2, but **_not_** `shuffle()`, as that would defeat the purpose of this challenge.

**_Example:_**

```swift
var arrayToShuffle = [6,7,8,9]
randomShuffle(array: &arrayToShuffle)
```
Returns 

```swift
[9,7,8,6]
```


**_Stretch:_** 

1. Go 'retro' and implement a function `randomInt(floor: Int, ceiling: Int) -> Int` to generate your random numbers between a floor and a ceiling using the `arc4random_uniform()` function, instead of waving your magic `random()` wand around emphatically (before Swift 4.2 the `random()` function didn’t exist).

2. Implement a truly _uniform_ shuffle function, `uniformRandomShuffle()` where each element of the initial array has the same _probability_ of being placed at each index in the final mutated array.

Here are the overall [instructions for code challenges](https://github.com/LambdaSchool/ios-code-challenge-instructions). Before you begin, fork and clone this repo and work through your solution in the included starter playground file. When you're done, **Please make sure to save and push all your work, and submit a Pull Request. Don't forget tag your TL so they can review your submission!**