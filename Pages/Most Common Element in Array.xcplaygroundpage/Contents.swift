//: [Previous](@previous)

import Foundation

//Most common element in array

var sampleArray = ["red", "blue", "red", "green", "red", "red", "red", "red", "black", "blue", "blue"]

func getMostCommonColor(array: [String]) -> [String]{
    
    var topColors: [String] = []
    var colorDictionary: [String: Int] = [:]
    
    //Creating the dictionary
    for color in array {
        if let count = colorDictionary[color] {
            colorDictionary[color] = count + 1
        } else {
            colorDictionary[color] = 1
        }
    }
    
    let highestValue = colorDictionary.values.max()
    
    //Iterating through the dictionary
    for (color, count) in colorDictionary {
        if colorDictionary[color] == highestValue {
            topColors.append(color)
        }
    }
    
    return topColors
}

getMostCommonColor(array: sampleArray)

//: [Next](@next)
