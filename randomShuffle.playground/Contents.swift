import UIKit

func randomShuffle(_ array: inout Array<Any>) {
    var rangeOfIndicies: ClosedRange = 1...array.count
    var shuffler: Array<Any> = []
    
    for index in rangeOfIndicies {
        shuffler.append(index)
    }
    
    for element in array {
        let replacementIndex = Int.random(in: rangeOfIndicies)
        shuffler.remove(at: replacementIndex)
        shuffler.insert(element, at: replacementIndex)
    }
    array = shuffler
}


var namesArray = ["Opie", "Anthony", "Jimmy", "Sam"]
var intsArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

randomShuffle(intsArray)
print(intsArray)
