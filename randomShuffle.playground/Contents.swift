import UIKit


func randomShuffle(array: [Int]) -> [Int]? {
    var array = array
    let count = array.count
    let randomNumber = Int(arc4random_uniform(UInt32(count)))
    let secondRandomNumber = Int(arc4random_uniform(UInt32(count)))
    array.swapAt(randomNumber, secondRandomNumber)
    return array

}
print(randomShuffle(array: [2, 3, 7, 8]))

