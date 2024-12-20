//
//  Prefix Sum Array.swift
//  Tech Diary
//
//  Created by Арсентий Халимовский on 17.11.2024.
//

import Foundation

// Function to calculate the prefix sum array
func calculatePrefixSum(_ arr: [Int]) -> [Int] {
	var prefixSum = [Int](repeating: 0, count: arr.count + 1) // Initialize prefix sum array

	// Build the prefix sum array
	for i in 0..<arr.count {
		prefixSum[i + 1] = prefixSum[i] + arr[i]
	}

	return prefixSum
}

// Function to get the sum of elements between indices L and R using the prefix sum
func rangeSum(prefixSum: [Int], L: Int, R: Int) -> Int {
	return prefixSum[R + 1] - prefixSum[L] // Calculate sum using prefix sums
}

// Example usage
let nums = [1, 2, 3, 4, 5]
let prefixSumArray = calculatePrefixSum(nums)

print("Prefix Sum Array: \(prefixSumArray)") // Output: [0, 1, 3, 6, 10, 15]

// Calculate the sum of elements from index 1 to index 3 (i.e., nums[1] + nums[2] + nums[3])
let sum = rangeSum(prefixSum: prefixSumArray, L: 1, R: 3)
print("Sum from index 1 to 3: \(sum)") // Output: 9 (2 + 3 + 4)
