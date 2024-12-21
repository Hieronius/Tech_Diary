class Solution {
	func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
		var numMap = [Int: Int]()
		for (index, num) in nums.enumerated() {
			let complement = target - num
			if let complementIndex = numMap[complement] {
				return [complementIndex, index]
			}
			numMap[num] = index
		}
		return []
	}
}

func testTwoSum() {
	let solution = Solution()

	// Define test cases
	let testCases: [([Int], Int, [Int])] = [
		([2, 7, 11, 15], 9, [0, 1]), // Normal case
		([3, 2, 4], 6, [1, 2]),      // Normal case
		([3, 3], 6, [0, 1]),         // Edge case with duplicates
		([1], 1, []),                 // Edge case with single element (invalid)
		([], 1, [])                   // Edge case with empty array
	]

	for (nums, target, expected) in testCases {
		let result = solution.twoSum(nums, target)
		assert(result == expected, "Failed for input: \(nums), target: \(target). Expected \(expected), got \(result)")
	}
}

testTwoSum()
print("All tests passed!")
