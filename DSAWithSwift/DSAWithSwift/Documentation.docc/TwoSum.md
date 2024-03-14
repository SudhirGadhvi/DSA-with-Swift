# TwoSum

## Overview

  The TwoSum algorithm is a common problem in computer science and is often used as an example of a hash table application. Given an array of integers `nums` and an integer `target`, return the indices of the two numbers such that they add up to the target. You may assume that each input would have exactly one solution, and you may not use the same element twice. You can return the answer in any order.

## Topics

- Hash Table

  The TwoSum algorithm utilizes a hash table (dictionary in Swift) to efficiently find the indices of the two numbers that sum up to the target. By storing each element of the array along with its index in the hash table, we can quickly check if the complement of the current element (target - current element) exists in the hash table. If it does, we have found the solution and return the indices.

- Time Complexity

  The time complexity of the TwoSum algorithm is O(n), where n is the number of elements in the array. This is because we traverse the array once to populate the hash table and then traverse it again to find the complement. Each lookup and insertion operation in the hash table takes O(1) time on average, resulting in a linear time complexity overall.

- Space Complexity

  The space complexity of the TwoSum algorithm is O(n), where n is the number of elements in the array. This is because we store each element of the array along with its index in the hash table, resulting in the space usage proportional to the size of the input array.

