import UIKit


func randomShuffle(numbers: inout [Int]) {
    
    for _ in 0..<numbers.count {
        let oldIndex = Int.random(in: 0..<numbers.count)
        let newIndex = Int.random(in: 0..<numbers.count)
        
        let entryPoint = numbers[oldIndex]
        numbers.remove(at: oldIndex)
        numbers.insert(entryPoint, at: newIndex)
        
    }
}

var arrayToShuffle = [6,7,8,9]
randomShuffle(numbers: &arrayToShuffle)
