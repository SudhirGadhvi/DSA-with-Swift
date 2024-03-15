//
//  TwoSum.swift
//  DSAWithSwift
//
//  Created by Sudhir Gadhvi on 14/03/24.
//

import Foundation

class TwoSum {
    
    /// Question: Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
    /// You may assume that each input would have exactly on solution, and you may not use the same element twice.
    /// You can return the answer in any order.
    ///
    /// - Hash Table
    ///
    ///    The TwoSum algorithm utilizes a hash table (dictionary in Swift) to efficiently find the indices of the two numbers that sum up to the target. By storing each element of the array along with its index in the hash table, we can quickly check if the complement of the current element (target - current element) exists in the hash table. If it does, we have found the solution and return the indices.
    ///
    /// - Time Complexity
    ///
    ///    The time complexity of the TwoSum algorithm is O(n), where n is the number of elements in the array. This is because we traverse the array once to populate the hash table and then traverse it again to find the complement. Each lookup and insertion operation in the hash table takes O(1) time on average, resulting in a linear time complexity overall.
    ///
    /// - Space Complexity
    ///
    ///    The space complexity of the TwoSum algorithm is O(n), where n is the number of elements in the array. This is because we store each element of the array along with its index in the hash table, resulting in the space usage proportional to the size of the input array.
    ///
    ///Reference: [Tow Sum - LeetCode](https://leetcode.com/problems/two-sum)
    ///
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int]? {

        /// Create an empty dictionary to store numbers and their indices.
        var map = [Int: Int]()

        /// Iterate through each element and its index in the 'nums' array.
        for (i, n) in nums.enumerated() {

            /// Calculate the difference between the target value and the current element.
            let diff = target - n

            /// Check if the difference exists in the 'map' dictionary.
            if let j = map[diff] {
                
                /// If the difference exists, return the indices of the current element and the element that sums up to the target.
                return [i, j]
            }
            
            /// Store the current element and its index in the 'map' dictionary.
            map[n] = i
        }

        /// If no such pair is found, return nil.
        return nil
    }
}
