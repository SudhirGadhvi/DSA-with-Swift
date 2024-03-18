//
//  ReverseStringTests.swift
//  DSAWithSwiftTests
//
//  Created by Sudhir Gadhvi on 18/03/24.
//

import XCTest
@testable import DSAWithSwift

final class ReverseStringTests: XCTestCase {
    
    func testReverseString() {
        
        // System under test
        let reverseString = ReverseString()
        
        // Arrange
        var input1: [Character] = ["h","e","l","l","o"]
        let expectedOutput1: [Character] = ["o","l","l","e","h"]
        
        // Act
        /// Reverse the string in-place
        reverseString.reverseString(&input1)
        
        // Assert
        /// Check if the output matches the expected output
        XCTAssertEqual(input1, expectedOutput1, "Test case 1 failed")
        
        
        // Arrange
        var input2: [Character] = ["H","a","n","n","a","h"]
        let expectedOutput2: [Character] = ["h","a","n","n","a","H"]
        
        // Act
        /// Reverse the string in-place
        reverseString.reverseString(&input2)
        
        // Assert
        /// Check if the output matches the expected output
        XCTAssertEqual(input2, expectedOutput2, "Test case 2 failed")
    }
    
    // MARK: - Performance test
    func testPerformance() {
        
        // System under test
        let reverseString = ReverseString()
        
        // Arrange
        var largeInput: [Character] = []
        
        for _ in 0..<100000 {
            largeInput.append("a")
        }
        
        // Act and Assert
        measure {
            reverseString.reverseString(&largeInput)
        }
    }
    
    // MARK: - Test space complexity
    func testSpaceComplexity() {
        
        // System under test
        let reverseString = ReverseString()
        
        // Arrange
        let input: [Character] = ["a", "b", "c"]
        var mutableInput = input
        let before = MemoryLayout.size(ofValue: mutableInput)
        
        // Act
        reverseString.reverseString(&mutableInput)
        
        // Assert
        let after = MemoryLayout.size(ofValue: mutableInput)
        XCTAssertEqual(before, after, "Space complexity test failed")
                                       
    }
}
