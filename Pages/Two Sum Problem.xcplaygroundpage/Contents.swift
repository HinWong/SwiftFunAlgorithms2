//: [Previous](@previous)

import Foundation

/// Two Sum Problem
/// Credit: Sean Allen

// Return a boolean if there are 2 numbers in an array that equal a sum

let numbers = [1,3,6,7,7,12,14]


// 1. Brute force - Nested for loop - (n^2) - least elegant
func bruteForceTwoSum(array: [Int], sum: Int) -> Bool {
    
    for i in 0..<array.count {
        
        //The where clause prevents the number from being compared to itself
        for j in 0..<array.count where j != i {
            
            if array[j] + array[i] == sum {
                print("True: \(array[i]) + \(array[j])")
                return true
            } else {
                print("False: \(array[i]) + \(array[j])")
            }
        }
    }
    return false
}

//bruteForceTwoSum(array: numbers, sum: 2)

// 2. Binary search - (n log n)
let numbers2 = [1,3,6,7,7,12,14]

func binarySearchTwoSum(array: [Int], sum: Int) -> Bool {
    
    for i in 0..<array.count {
        let compliment = sum - array[i]
        
        var tempArray = array
        tempArray.remove(at: i)
        
        let hasCompliment = binarySearch(array: tempArray, key: compliment)
        print("num: \(array[i]) - \(hasCompliment)")
        
        if hasCompliment == true {
            print("true - num: \(array[i]), compliment:\(compliment)")
            return true
        }
    }
    return false
}
//binarySearchTwoSum(array: numbers2, sum: 14)

// 3. Move pointer from either end - (Linear)
let numbers3 = [1,3,6,7,7,12,14]

func twoSumPointers(array: [Int], sum: Int) -> Bool {
    
    var lowIndex = 0
    var highIndex = array.count - 1
    
    //The loop stops running only when the high and low pointers cross each other
    while lowIndex < highIndex {
        let sumOfItems = array[lowIndex] + array[highIndex]
        
        if sumOfItems == sum {
            print("Sum of \(array[lowIndex]) and \(array[highIndex]) = \(sum)")
            return true
        } else if sumOfItems < sum {
            lowIndex += 1
        } else if sumOfItems > sum {
            highIndex -= 1
        }
    }
    print("Pointers have crossed")
    return false
}
twoSumPointers(array: numbers3, sum: 19)














// Binary search helper method
func binarySearch(array:[Int], key: Int) -> Bool {
    
    //Check if the array is empty
    if array.count == 0 {
        return false
    }
    
    let minIndex = 0
    let maxIndex = array.count - 1
    let midIndex = array.count / 2
    let midValue = array[midIndex]
    
    //Check if the key is within the bounds of the array
    if key < array[minIndex] || key > array[maxIndex] {
        print("\(key) not in the array")
        return false
    }
    
    //Search through back half of the array
    if key > midValue {
        let slice = Array(array[midIndex + 1...maxIndex])
        return binarySearch(array: slice, key: key)
    }
    
    //Search through front half of the array
    if key < midValue {
        let slice = Array(array[minIndex...midIndex - 1])
        return binarySearch(array: slice, key: key)
    }
    
    //Search value is equal to the middle value of the array
    if key == midValue {
        print("\(key) found in the array")
        return true
    }
    
    return false
}




//: [Next](@next)
