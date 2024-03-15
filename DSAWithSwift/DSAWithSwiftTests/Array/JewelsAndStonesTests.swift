//
//  JewelsAndStonesTests.swift
//  DSAWithSwiftTests
//
//  Created by Sudhir Gadhvi on 15/03/24.
//

import XCTest

final class JewelsAndStonesTests: XCTestCase {

    // MARK: - Test case to verify when jewels are present in stones.
    func testJewelsPresentInStones() {
        
        // System Under Test
        let jewelStonesCounter = JewelsAndStones()
        
        // Arrange
        let jewels = "aA"
        let stones = "aAAbbb"
        let expectedCount = 3
        
        // Act
        /// Record the start time of the test
        let startTime = DispatchTime.now()
        
        let result = jewelStonesCounter.numJewelsInStones(jewels, stones)
        
        /// Record the end time of the test
        let endTime = DispatchTime.now()
        
        /// Calculate the execution time in seconds
        let executionTime = Double(endTime.uptimeNanoseconds - startTime.uptimeNanoseconds) / 1_000_000_000
        
        // Assert
        /// Check if the result matches the expected count
        XCTAssertEqual(result, expectedCount, "Test case 1 failed")
        
        /// Print the execution time of the test
        print("Test case 1 - Execution Time: \(executionTime) seconds")
    }
    
    // MARK: - Test case to verify when no jewels are present in stones.
    func testNoJewelsPresentInStones() {
        
        // System Under Test
        let jewelStonesCounter = JewelsAndStones()
        
        // Arrange
        let jewels = "z"
        let stones = "ZZ"
        let expectedCount = 0
        
        // Act
        /// Record the start time of the test
        let startTime = DispatchTime.now()
        
        let result = jewelStonesCounter.numJewelsInStones(jewels, stones)
        
        /// Record the end time of the test
        let endTime = DispatchTime.now()
        
        /// Calculate the execution time in seconds
        let executionTime = Double(endTime.uptimeNanoseconds - startTime.uptimeNanoseconds) / 1_000_000_000
        
        // Assert
        /// Check if the result matches the expected count
        XCTAssertEqual(result, expectedCount, "Test case 2 failed")
        
        /// Print the execution time of the test
        print("Test case 2 - Execution Time: \(executionTime) seconds")
    }
    
    // MARK: - Test case to verify when all stones are jewels
    func testAllStonesAreJewels() {
        
        // System under test
        let jewelStonesCounter = JewelsAndStones()
        
        // Arrange
        let jewels = "aA"
        let stones = "aAaAaA"
        let expectedCount = 6
        
        // Act
        /// Record the start time of the test
        let startTime = DispatchTime.now()
        
        let result = jewelStonesCounter.numJewelsInStones(jewels, stones)
        
        /// Record the end time of the test
        let endTime = DispatchTime.now()
        
        /// Calculate the execution time in seconds
        let executionTime = Double(endTime.uptimeNanoseconds - startTime.uptimeNanoseconds) / 1_000_000_000
        
        // Assert
        /// Check if the result matches the expected count
        XCTAssertEqual(result, expectedCount, "Test case 3 failed")
        
        /// Print the execution time of the test
        print("Test case 3 - Execution Time: \(executionTime) seconds")
    }
    
    // MARK: - Test case to verify time and space complexity
    func testTimeAndSpaceComplexity() {
        
        // System under test
        let jewelStonesCounter = JewelsAndStones()
        
        // Arrange
        let jewels = "aA"
        let stones = "aAAbbb"
        let expectedCount = 3
        
        // Act
        /// Record the start time of the test
        let startTime = DispatchTime.now()
        let result = jewelStonesCounter.numJewelsInStones(jewels, stones)
        
        /// Record the end time of the test
        let endTime = DispatchTime.now()
        
        /// Calculate the execution time in seconds
        let executionTime = Double(endTime.uptimeNanoseconds - startTime.uptimeNanoseconds) / 1_000_000_000
        
        // Assert for time complexity
        /// Check if the execution time is within an acceptable limit
        XCTAssertLessThan(executionTime, 0.001, "Test case failed due to high time complexity")
        
        // Assert for space complexity
        let jewelsMemory = MemoryLayout.size(ofValue: jewels)
        let stonesMemory = MemoryLayout.size(ofValue: stones)
        let resultMemory = MemoryLayout.size(ofValue: result)
        let totalMemory = jewelsMemory + stonesMemory + resultMemory
        
        /// Check if total memory usage is within an acceptable limit
        XCTAssertLessThan(totalMemory, 2000, "Test case failed do to high space complexity")
        
    }
}
