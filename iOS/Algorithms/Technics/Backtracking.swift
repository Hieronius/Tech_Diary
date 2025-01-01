//
//  Backtracking.swift
//  Tech Diary
//
//  Created by Арсентий Халимовский on 16.11.2024.
//

import Foundation

func generateSubsets(_ nums: [Int]) -> [[Int]] {
	var subsets: [[Int]] = [] // This will store all the subsets
	var currentSubset: [Int] = [] // This will represent the current subset being built

	func backtrack(_ index: Int) {
		// Add the current subset to the result
		subsets.append(currentSubset)

		// Explore further elements
		for i in index..<nums.count {
			currentSubset.append(nums[i]) // Include this element
			backtrack(i + 1)               // Move to the next element
			currentSubset.removeLast()     // Exclude this element (backtrack)
		}
	}

	backtrack(0) // Start the backtracking process from index 0
	return subsets
}

// Example usage
let array = [1, 2, 3]
let allSubsets = generateSubsets(array)
print(allSubsets)
