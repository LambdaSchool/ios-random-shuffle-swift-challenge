import UIKit

func randomShuffle(array: inout [Int]) {
    var count = array.count
    
    while count > 0 {
        let index = Int.random(in: 0..<count)
        
        count -= 1
        
        let temp = array[count]
        array[count] = array[index]
        array[index] = temp
    }
}


var arrayToShuffle = [6,7,8,9]
var biggerArrayToShuffle = [1,2,3,4,5,6,7,8,9]


randomShuffle(array: &arrayToShuffle)
randomShuffle(array: &arrayToShuffle)
randomShuffle(array: &arrayToShuffle)
randomShuffle(array: &arrayToShuffle)
randomShuffle(array: &arrayToShuffle)
randomShuffle(array: &biggerArrayToShuffle)
randomShuffle(array: &biggerArrayToShuffle)
randomShuffle(array: &biggerArrayToShuffle)
randomShuffle(array: &biggerArrayToShuffle)
randomShuffle(array: &biggerArrayToShuffle)



func randomInt(floor: Int, ceiling: Int) -> Int {
    let range = (ceiling - floor + 1) + floor
    
    return Int(arc4random_uniform(UInt32(range)))
}

func uniformRandomShuffle(array: inout [Int]) {
    var count = array.count
    
    while count > 0 {
        let index = randomInt(floor: 0, ceiling: count)
        
        count -= 1
        
        let temp = array[count]
        array[count] = array[index]
        array[index] = temp
    }
}


uniformRandomShuffle(array: &biggerArrayToShuffle)
uniformRandomShuffle(array: &biggerArrayToShuffle)
uniformRandomShuffle(array: &biggerArrayToShuffle)
uniformRandomShuffle(array: &biggerArrayToShuffle)
uniformRandomShuffle(array: &biggerArrayToShuffle)

