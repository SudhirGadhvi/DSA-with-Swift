//
//  JewelsAndStones.swift
//  DSAWithSwift
//
//  Created by Sudhir Gadhvi on 15/03/24.
//

import Foundation

class JewelsAndStones {
    /// Question: You're given strings jewels representing the types of stones that are jewels, and stones representing the stones you have. Each character in stones is a type of stone you have. You want to know how many of the stones you have are also jewels.
    ///
    /// Function to count the number of jewels in a collection of stones.
    /// - `Parameters:`
    ///
    ///       jewels: A string representing types of jewels.
    ///       stones: A string representing types of stones.
    ///       Returns: An integer representing the count of jewels found in the stones.
    ///
    /// - `Time Complexity:` O(n*m), where n is the length of jewels and m is the length of stones.
    ///
    /// - `Space Complexity:` O(n), where n is the length of jewels.
    ///
    ///
    ///Reference: [LeetCode: Jewels and Stones ](https://leetcode.com/problems/jewels-and-stones)
    
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        /// Filter the stones collection to only contain characters that are present in jewels,
        /// then count the filtered stones.
        return stones.filter { jewels.contains($0) }.count
    }
}
