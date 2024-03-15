//
//  PartitionLabelTests.swift
//  DSAWithSwiftTests
//
//  Created by Sudhir Gadhvi on 15/03/24.
//

import XCTest

final class PartitionLabelTests: XCTestCase {
    
    // MARK: - Test case to verify the functionality of the partitionLabels method
    func testPartitionLabels() {
        
        // System under test
        let partitionLabeler = PartitionLabels()
        
        // Arrange
        let str = "ababcbacadefegdehijhklij"
        let expectedOutput = [9, 7, 8]
        
        // Act
        let startTime = DispatchTime.now()
        let result = partitionLabeler.partitionLabels(str)
        let endTime = DispatchTime.now()
        let executionTime = Double(endTime.uptimeNanoseconds - startTime.uptimeNanoseconds) / 1_000_000_000
        
        // Assert for correctness of output
        XCTAssertEqual(result, expectedOutput, "Test Case failed due to incorrect output")
        
        // Assert for time complexity
        XCTAssertLessThan(executionTime, 0.001, "Test Case failed due to high time complexity")
        
        // Assert for space complexity
        let sMemory = MemoryLayout.size(ofValue: str) // Memory used by input string str
        let expectedOutputMemory = MemoryLayout.size(ofValue: expectedOutput) // Memory used by expectedOutput array
        let resultMemory = MemoryLayout.size(ofValue: result) // Memory used by result array
        let totalMemory = sMemory + expectedOutputMemory + resultMemory // Total memory usage
        
        XCTAssertLessThanOrEqual(totalMemory, 2000, "Test Case failed due to high space complexity")
    }
    
    // MARK: - Test case with empty string
    func testEmptyString() {
        
        // System under test
        let partitionLabeler = PartitionLabels()
        
        // Arrange
        let str = ""
        let expectedOutput = [Int]()
        
        // Act
        let startTime = DispatchTime.now()
        let result = partitionLabeler.partitionLabels(str)
        let endTime = DispatchTime.now()
        let executionTime = Double(endTime.uptimeNanoseconds - startTime.uptimeNanoseconds) / 1_000_000_000
        
        // Assert for correctness of output
        XCTAssertEqual(result, expectedOutput, "Test Case failed due to incorrect output")
        
        // Assert for time complexity
        XCTAssertLessThan(executionTime, 0.001, "Test Case failed due to high time complexity")
        
        // Assert for space complexity
        let sMemory = MemoryLayout.size(ofValue: str) // Memory used by input string str
        let expectedOutputMemory = MemoryLayout.size(ofValue: expectedOutput) // Memory used by expectedOutput array
        let resultMemory = MemoryLayout.size(ofValue: result) // Memory used by result array
        let totalMemory = sMemory + expectedOutputMemory + resultMemory // Total memory usage
        
        XCTAssertLessThanOrEqual(totalMemory, 2000, "Test Case failed due to high space complexity")
    }
    
    // MARK: - Test case with single character string
    func testSingleCharacterString() {
        
        // System under test
        let partitionLabeler = PartitionLabels()
        
        // Arrange
        let str = "a"
        let expectedOutput = [1]
        
        // Act
        let startTime = DispatchTime.now()
        let result = partitionLabeler.partitionLabels(str)
        let endTime = DispatchTime.now()
        let executionTime = Double(endTime.uptimeNanoseconds - startTime.uptimeNanoseconds) / 1_000_000_000
        
        // Assert for correctness of output
        XCTAssertEqual(result, expectedOutput, "Test Case failed due to incorrect output")
        
        // Assert for time complexity
        XCTAssertLessThan(executionTime, 0.001, "Test Case failed due to high time complexity")
        
        // Assert for space complexity
        let sMemory = MemoryLayout.size(ofValue: str) // Memory used by input string str
        let expectedOutputMemory = MemoryLayout.size(ofValue: expectedOutput) // Memory used by expectedOutput array
        let resultMemory = MemoryLayout.size(ofValue: result) // Memory used by result array
        let totalMemory = sMemory + expectedOutputMemory + resultMemory // Total memory usage
        
        XCTAssertLessThanOrEqual(totalMemory, 2000, "Test Case failed due to high space complexity")
    }

}
