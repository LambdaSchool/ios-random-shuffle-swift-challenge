import UIKit

func randomShuffle(array: inout[Int]) {
    for _ in 0..<array.count {
        let oldIndex = Int.random(in: 0..<array.count)
        let newIndex = Int.random(in: 0..<array.count)
        let entry = array[oldIndex]
        array.remove(at: oldIndex)
        array.insert(entry, at: newIndex)
    }
}


var arrayToShuffle = [6,7,8,9]
randomShuffle(array: &arrayToShuffle)
