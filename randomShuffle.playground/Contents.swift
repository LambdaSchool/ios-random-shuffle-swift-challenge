import UIKit

extension Array where Element == Int {
    
    mutating func randomShuffle() -> [Int] {
        // Make a holderArray
        var holderArray : [Int] = []
        // Count everytime we add a new element to our holder Array
        var count  = 0
        
        self.forEach { (element) in
            // Loop through the original array and insert its element to our holder array in random position
            count += 1
            holderArray.insert(element, at: Int.random(in: 0 ..< count))
        }
        
        return holderArray
    }
}

var array = [6,7,8,9]
array.randomShuffle()
