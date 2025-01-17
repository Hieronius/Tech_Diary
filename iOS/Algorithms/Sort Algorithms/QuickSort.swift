import Foundation

// MARK: Quick sort

// O(n log n) for time complexity and 0(n) for space complexity (if not in place)
func quickSort(_ array: [Int]) -> [Int] {

	// base case of recursion
	guard array.count > 1 else { return array }

	let pivot = array[array.count / 2]

	var leftArray: [Int] = []
	var middleArray: [Int] = []
	var rightArray: [Int] = []

	for element in array {

		if element > pivot {
			rightArray.append(element)

		} else if element < pivot {
			leftArray.append(element)

		} else if element == pivot {
			middleArray.append(element)
		}
	}
	return quickSort(leftArray) + middleArray + quickSort(rightArray)
}
