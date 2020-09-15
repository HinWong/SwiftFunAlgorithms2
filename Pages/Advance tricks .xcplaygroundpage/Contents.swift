//: [Previous](@previous)

import Foundation

// Array extensions

// Softball interview question
// Function that can sum up a list of numbers

func sum (numbers: [Int]) -> Int {
    
//    var res = 0
//    numbers.forEach { (num) in
//        res += num
//    }
//    return res
    
    return numbers.reduce(0, {$0 + $1})
}
sum(numbers: [1,2,3,4])


// Function that also support sum of doubles, floats, etc

extension Array where Element: Numeric {
    
    func customSum() -> Element {
        return self.reduce(0, {$0 + $1})
    }
}
[1.0, 2.0].customSum()

let floats: [Float] = [1.0, 2.5, 4.5]
floats.customSum()



extension Array where Element == String {
    
    func concatenate() -> String {
        return self.reduce("", {$0 + $1 + " "})
    }
}
["Hello", "From", "YouTube", "Channel"].concatenate()

//: [Next](@next)
