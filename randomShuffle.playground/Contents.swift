import Foundation

/// Performs an in place (mutating/destructive) random shuffle of an array
/// - Parameter array: Int array of elements to be randomized
func randomShuffle(array: inout [Int]) {
    var numToRandomize = array.count
    var currentPosition = 0
    var holdingPlace = 0
    
    // March through the arrary.
    // Temporarily store the element in the current position.
    // Pick a random element between current element and end of array
    // Swap current element and element chosen at random (winner!)
    //  Note: it could be the same element
    // Advance to next element index and reduce iterations by 1
    while numToRandomize > 0 {
        holdingPlace = array[currentPosition]
        
        let winnerIndex = Int.random(in: currentPosition..<array.count)
        
        array[currentPosition] = array[winnerIndex]
        array[winnerIndex] = holdingPlace
        
        currentPosition += 1
        numToRandomize -= 1
    }
}

var arrayToShuffle = [6,7,8,9]
randomShuffle(array: &arrayToShuffle)
print(arrayToShuffle) // Random
randomShuffle(array: &arrayToShuffle)
print(arrayToShuffle) // Random

arrayToShuffle = []
randomShuffle(array: &arrayToShuffle)
print(arrayToShuffle) // []

arrayToShuffle = [76]
randomShuffle(array: &arrayToShuffle)
print(arrayToShuffle) // [76]

arrayToShuffle = [45,58,29,69,39,11,61,88,55,48,57,36,56,44,42,51,33,86,59,60]
randomShuffle(array: &arrayToShuffle)
print(arrayToShuffle)
