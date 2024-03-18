//
//  ReverseString.swift
//  DSAWithSwift
//
//  Created by Sudhir Gadhvi on 18/03/24.
//

import Foundation

class ReverseString {

       /// Function to reverse a string in-place.
       ///
       /// This function takes an array of characters representing a string as input and reverses it in-place.
       ///
       /// - Parameter s: The input string as an array of characters.
       ///
       /// - Time Complexity: O(n), where n is the length of the input array `s`.
       ///    The function iterates through half of the array to perform the reversal.
       ///
       /// - Space Complexity: O(1), as the function operates directly on the input array `s` without using any additional data structures.
       ///
       /// - Note: This function modifies the input array `s` in-place.
       ///
       ///
       /// Reference: [LeetCode: Reverse String](https://leetcode.com/problems/reverse-string/)
       ///

    func reverseString(_ s: inout [Character]) {
        // Initialising the left pointer at the beginning of the array
        var left = 0
        
        // Initialising the right pointer at the end of the array
        var right = s.count - 1
        
        // While the left pointer is less than the right pointer
        while left < right {
            // Storing the character at the left pointer in a temporary variable
            let temp = s[left]
            
            // Swapping the character at the left pointer with the character at the right pointer
            s[left] = s[right]
            
            // Putting the character from the temporary variable into the correct position
            s[right] = temp
            
            // Moving the left pointer one step to the right
            left += 1
            
            // Moving the right pointer one step to the left
            right -= 1
        }
    }
}
