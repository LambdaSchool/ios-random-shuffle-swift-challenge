import UIKit

func randomShuffle(array: [Int]) -> [Int] {
    var newArray = [Int]()
    var chosenArray = [Int]()
    
    for _ in 0..<array.count {
        var randomInt: Int
        if chosenArray.count != array.count {
            repeat {
                randomInt = Int.random(in: 0..<array.count)
                
            } while (chosenArray.contains(randomInt))
            newArray.append(array[randomInt])
            chosenArray.append(randomInt)
        }
    }
    
    return newArray
}

let intArray = [1, 2, 5, 6, 7, 8, 9, 3]

print(intArray)

print(randomShuffle(array: intArray))

