import UIKit


func randomShuffle(array: [Int]) -> [Int]? {
    var array = array
    let randomNumber = Int(arc4random_uniform(UInt32(array.count)))
    let secondRandomNumber = Int(arc4random_uniform(UInt32(array.count)))
    array.swapAt(randomNumber, secondRandomNumber)
    return array

}
print(randomShuffle(array: [2, 3, 7, 8]))

