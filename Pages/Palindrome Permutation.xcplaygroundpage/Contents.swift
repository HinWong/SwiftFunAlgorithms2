import UIKit

// Palindrome Permutation
// Spacing and capitalization matters here

// Credit: Sean Allen

func isPalindrome(word: String) -> Bool {
    
    var oddCharacters: Set<Character> = []
    
    //If we see it, remove it, if we don't see it, add it
    for char in word {
        if oddCharacters.contains(char) {
            oddCharacters.remove(char)
        } else {
            oddCharacters.insert(char)
        }
    }
    
    return oddCharacters.count <= 1
}

isPalindrome(word: "hannah")
