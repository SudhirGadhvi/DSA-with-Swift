//
//  TwoSum.swift
//  DSAWithSwift
//
//  Created by Sudhir Gadhvi on 14/03/24.
//

import Foundation

class TwoSum {
    
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
