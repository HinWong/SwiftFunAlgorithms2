//: [Previous](@previous)

import Foundation

// Insertion Sort

// While using the inout keyword, as we pass the address of the varaible/object, it modifies the actual object also

// You can use inout where it passes the parameter as a reference

// In this instance it is to make the array mutable

var arrayOne = [5,6,7888, 5454, 33, 54, 65, 2, 3, 1, 45, 54532, 6423453]

//func insertionSort(unsortedArray: inout [Int]) -> [Int] {
//
//    // Loop through the array
//    for index in 1..<unsortedArray.count {
//
//        //
//        for index2 in (1...index).reversed() {
//
//            if unsortedArray[index2] < unsortedArray[index2 - 1] {
//                unsortedArray.swapAt(index2, index2 - 1)
//            } else {
//                break
//            }
//        }
//    }
//    return unsortedArray
//}
//
//print(insertionSort(unsortedArray: &arrayOne))

func otherInsertionSort(_ array: [Int]) -> [Int] {
    var a = array
    for x in 1..<a.count {
        var y = x
        while y > 0 && a[y] < a[y-1] {
            a.swapAt(y-1, y)
            y -= 1
        }
    }
    return a
}
print(otherInsertionSort(arrayOne))

// The inner loop looks at the element at position x. This is the number at the top of the pile, and it may be smaller than any of the previous elements. The innerloop steps backwards through the sorted array; every time it finds a previous number that is larger, it swaps them. When the inner loop completes, the beginning of the array is sorted again, and the sorted portion has grown by on element.

//: [Next](@next)


