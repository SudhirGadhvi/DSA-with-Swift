//
//  PartitionLabels.swift
//  DSAWithSwift
//
//  Created by Sudhir Gadhvi on 15/03/24.
//

import Foundation

class PartitionLabels {
    /// Function to partition a string into as many parts as possible so that each letter appears in at most one part.
    ///
    /// - Parameters:
    ///   - str: A string to partition.
    /// - Returns: An array of integers representing the size of each part.
    ///
    /// - Time Complexity: O(n), where n is the length of the input string s.
    /// - Space Complexity: O(1), since the size of the alphabet is fixed.
    ///
    ///
    ///
    ///Reference: [LeetCode: Partition Labels ](https://leetcode.com/problems/partition-labels)
    ///
    
    func partitionLabels(_ str: String) -> [Int] {
        
        /// Dictionary to store the last occurrence index of each character
        var charCount = [Character: Int]()
        
        /// Array to store the size of each part
        var order = [Int]()
        
        /// Iterate through the string to build the charCount dictionary
        for (index, char) in str.enumerated() {
            charCount[char] = index
        }
        
        /// Variable to track the start index of each part
        var start = 0
        
        /// Variable to track the end index of each part
        var end = 0
        
        /// Iterate through the string to partition it into parts
        for (index, char) in str.enumerated() {
            
            /// Update the end index of the current part
            end = max(end, charCount[char] ?? 0)
            
            /// If the current index is equal to the end index of the current part
            if index == end {
                
                /// Calculate the size of the current part and add it to the result array
                order.append(end - start + 1)
                
                /// Update the start index of the next part
                start = end + 1
            }
        }
        
        /// Return the array of part sizes
        return order
    }
}
