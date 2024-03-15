//
//  SmallerNumbersThanCurrentTests.swift
//  DSAWithSwiftTests
//
//  Created by Sudhir Gadhvi on 15/03/24.
//

import XCTest

final class SmallerNumbersThanCurrentTests: XCTestCase {
    
    // MARK: - Test case to verify the functionality of the smaller numbers count than current number
    func testSmallerNumberCountThanCurrentNumber() {
        
        // System under test
        let smallerNumberThanCurrent = SmallerNumbersThanCurrent()
        
        // Arrange
        let nums = [8,1,2,2,3]
        let expectedOutput = [4, 0, 1, 1, 3]
        
        // Act
        /// Record the start time of the test
        let startTime = DispatchTime.now()
        
        let result = smallerNumberThanCurrent.smallerNumbersThanCurrent(nums)
        
        /// Record the end time of the test
        let endTime = DispatchTime.now()
        
        /// Calculate the execution time in seconds
        let executionTime = Double(endTime.uptimeNanoseconds - startTime.uptimeNanoseconds) / 1_000_000_000
        
        // Assert for correctness of output
        XCTAssertEqual(result, expectedOutput, "Test case failed due to incorrect output")
        
        // Assert for time complexity
        /// Check if the execution time is within an acceptable limit
        XCTAssertLessThan(executionTime, 0.001, "Test case failed due to high time complexity")
        
        // Assert for space complexity
        let numsMemory = MemoryLayout.size(ofValue: nums)
        let expectedOutputMemory = MemoryLayout.size(ofValue: expectedOutput)
        let resultMemory = MemoryLayout.size(ofValue: result)
        let totalMemory = numsMemory + expectedOutputMemory + resultMemory
        
        /// Check if total memory usage is within an acceptable limit
        XCTAssertLessThan(totalMemory, 2000, "Test case failed due to high space complexity")
    }
    
    // Test case when input array is empty
    func testEmptyArray() {
        
        // System under test
        let smallerNumberThanCurrent = SmallerNumbersThanCurrent()
        
        // Arrange
        let nums = [Int]()
        let expectedOutput = [Int]()
        
        // Act
        
        /// Record the start time of the test
        let startTime = DispatchTime.now()
        
        let result = smallerNumberThanCurrent.smallerNumbersThanCurrent(nums)
        
        /// Record the end time of the test
        let endTime = DispatchTime.now()
        
        /// Calculate the execution time in seconds
        let executionTime = Double(endTime.uptimeNanoseconds - startTime.uptimeNanoseconds) / 1_000_000_000
        
        // Assert for correctness of output
        XCTAssertEqual(result, expectedOutput, "Test case failed due to incorrect ouput")
        
        // Assert for time complexity
        /// Check if the execution time is within an acceptable limit
        XCTAssertLessThan(executionTime, 0.001, "Test case failed due to high time complexity")
        
        // Assert for space complexity
        let numsMemory = MemoryLayout.size(ofValue: nums)
        let expectedOutputMemory = MemoryLayout.size(ofValue: expectedOutput)
        let resultMemory = MemoryLayout.size(ofValue: result)
        let totalMemory = numsMemory + expectedOutputMemory + resultMemory
        
        /// Check if total memory usage is within an acceptable limit
        XCTAssertLessThan(totalMemory, 2000, "Test case failed due to high space complexity")
    }
    
    // MARK: - Test case with duplicate elements in the input array
    func testDuplicateElements() {
        
        // System under test
        let smallerNumberThanCurrent = SmallerNumbersThanCurrent()
        
        // Arrange
        let nums = [5, 2, 6, 1, 5, 4, 7, 2, 9]
        let expectedOutput = [4, 1, 7, 0, 4, 3, 8, 1, 8]
        
        // Act
        /// Record the start time of the test
        let startTime = DispatchTime.now()
        
        let result = smallerNumberThanCurrent.smallerNumbersThanCurrent(nums)
        
        /// Record the end time of the test
        let endTime = DispatchTime.now()
        
        /// Calculate the execution time in seconds
        let executionTime = Double(endTime.uptimeNanoseconds - startTime.uptimeNanoseconds) / 1_000_000_000
        
        // Assert for correctness of output
        XCTAssertEqual(result, expectedOutput, "Test case failed due to incorrect output")
        
        // Assert for time complexity
        XCTAssertLessThan(executionTime, 0.001, "Test case failed due to high time complexity")
        
        // Assert for space complexity
        let numsMemory = MemoryLayout.size(ofValue: nums)
        let expectedOutputMemory = MemoryLayout.size(ofValue: expectedOutput)
        let resultMemory = MemoryLayout.size(ofValue: result)
        let totalMemory = numsMemory + expectedOutputMemory + resultMemory
        
        /// Check if total memory usage is within an acceptable limit
        XCTAssertLessThan(totalMemory, 2000, "Test case failed due to high space complexity")
    }
}
