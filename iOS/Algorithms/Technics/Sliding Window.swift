func maxSumSubarray(arr: [Int], k: Int) -> Int? {

	guard !array.isEmpty && k > 0 && arr.count >= k else { return nil }

	var maxSum = 0
	var windowSum = 0
	var windowStart = 0

	// Calculate the sum of the first k elements
	for i in 0..<k {
		windowSum += arr[i]
	}

	maxSum = windowSum // Initialize maxSum with the first window sum

	// Slide the window from start to end of the array
	for windowEnd in k..<arr.count {
		// Add the next element in the window
		windowSum += arr[windowEnd]
		// Subtract the element going out of the window
		windowSum -= arr[windowStart]

		// Move the start pointer ahead for the next iteration
		windowStart += 1

		// Update maxSum if we found a new maximum
		maxSum = max(maxSum, windowSum)
	}

	return maxSum
}

// Example usage:
if let result = maxSumSubarray(arr: [1, 4, 2, 10, 23, 3, 1, 0, 20], k: 4) {
	print("Maximum sum of subarray of size \(4) is \(result)") // Output: 39
}
