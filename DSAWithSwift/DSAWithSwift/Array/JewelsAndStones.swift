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
    /// - **Time Complexity**: We measure the execution time of the function using `DispatchTime`. The assertion `XCTAssertLessThan` checks if the execution time is less than a certain threshold (here, 0.001 seconds). This ensures that the function executes within an acceptable time limit.
    ///
    /// - **Space Complexity**: We calculate the memory usage of the input strings (`jewels` and `stones`) and the result integer (`result`). Then we sum up these memory usages to get the total memory consumption. The assertion `XCTAssertLessThanOrEqual` checks if the total memory usage is less than or equal to a certain threshold (here, 2000 bytes). This ensures that the function uses a reasonable amount of memory.
    ///
    ///Reference: [LeetCode: Jewels and Stones ](https://leetcode.com/problems/jewels-and-stones)
    
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        /// Filter the stones collection to only contain characters that are present in jewels,
        /// then count the filtered stones.
        return stones.filter { jewels.contains($0) }.count
    }
}
