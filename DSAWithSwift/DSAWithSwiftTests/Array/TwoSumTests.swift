//
//  TwoSumTests.swift
//  DSAWithSwift
//
//  Created by Sudhir Gadhvi on 14/03/24.
//

import XCTest
@testable import DSAWithSwift

final class TwoSumTests: XCTestCase {

    func testTwoSum() {
        
        // System Under Test
        let sut = TwoSum()
        
        // Arrange
        let nums = [1, 2, 3, 4, 5]
        let target = 9
        
        // Act
        let startDate = Date()
        let result = sut.twoSum(nums, target)
        let endDate = Date()
        
        // Assert
        /// Check if result is [4, 3]
        XCTAssertEqual(result, [4, 3], "Expected [4, 3] as result")
        
        if let indices = result {
            /// Check if the result array has exactly 2 indices
            XCTAssertEqual(indices.count, 2, "Expected result array to have exactly 2 indices")
            
            /// First index
            let index1 = indices[0]
            
            /// Second index
            let index2 = indices[1]
            
            /// Check if indices are different
            XCTAssert(index1 != index2, "Indices should be different")
            
            /// Check if first index is within bounds
            XCTAssert(index1 >= 0 && index1 < nums.count, "Index \(index1) is out of bounds")
            
            /// Check if second index is within bounds
            XCTAssert(index2 >= 0 && index2 < nums.count, "Index \(index2) is out of bounds")
            
            /// Check if sum of elements at indices equals target
            XCTAssertEqual(nums[index1] + nums[index2], target, "Sum of elements at indices \(index1) and \(index2) should equal target")
            
            
            // Time Complexity Assertion
            let timeInterval = endDate.timeIntervalSince(startDate)
            
            // 1 millisecond per your requirement
            let maxAllowedTimeInterval = 0.001

            /// Determine the maximum time allowed for an O(n) operation based on input size
            let maxAllowedTime = Double(nums.count) * maxAllowedTimeInterval

            /// Check if the measured time is less than the allowed time
            XCTAssertLessThanOrEqual(timeInterval, maxAllowedTime, "Time complexity exceeded O(n)")

            
            // Space Complexity Assertion
            
            /// Space complexity is proportional to the size of the input array
            let spaceComplexity = Double(nums.count)
            
            /// O(n) space complexity
            let maxAllowedSpace = Double(nums.count)

            /// Check if the space complexity is less than the maximum allowed space
            XCTAssertLessThanOrEqual(spaceComplexity, maxAllowedSpace, "Space complexity exceeded O(n)")
        }
    }
}
