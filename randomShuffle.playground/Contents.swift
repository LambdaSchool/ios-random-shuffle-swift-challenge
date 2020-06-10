import UIKit

func randomShuffle(array: [Int]) -> [Int] {
    var array = array
    let randomNum = Int(arc4random_uniform(UInt32(array.count)))
    let randomNumTwo = Int(arc4random_uniform(UInt32(array.count)))
    array.swapAt(randomNum, randomNumTwo)
    return array

}
print(randomShuffle(array: [1, 2, 43, 9, 10]))
