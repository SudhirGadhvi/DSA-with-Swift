//
//  SmallerNumbersThanCurrent.swift
//  DSAWithSwift
//
//  Created by Sudhir Gadhvi on 15/03/24.
//

import Foundation

class SmallerNumbersThanCurrent {
    
    /// Function to count the number of smaller numbers than each element in the input array.
        ///
        /// - Parameters:
        ///   - nums: An array of integers.
        /// - Returns: An array of integers representing the count of smaller numbers than each element in the input array.
        ///
        /// - Time Complexity: O(n^2), where n is the length of the input array.
        /// - Space Complexity: O(n), where n is the length of the input array.
        ///
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        
        /// Initialize an array to store counts of each number in the input array.
        var countArray = Array(repeating: 0, count: 101)
        
        /// Initialize an array to store the result.
        var result = [Int]()
        
        /// Count occurrences of each number in the input array.
        for num in nums {
            countArray[num] += 1
        }
        
        /// Calculate the cumulative sum of counts to get the number of smaller elements.
        for i in 1..<countArray.count {
            countArray[i] += countArray[i-1]
        }
        
        /// Iterate through the input array to get the count of smaller elements for each element.
        for num in nums {
            if num == 0 {
                result.append(0)
            } else {
                result.append(countArray[num-1])
            }
        }
        
        /// Return the result array.
        return result
    }
}
