import Foundation

// Speed - O(n * log n)
// Space - O(n)

func merge(_ left: [Int], _ right: [Int]) -> [Int] {
	// 1.
	var leftIndex = 0
	var rightIndex = 0

	// 2.
	var orderedArray: [Int] = []

	// Merging logic here!

	// 2.1
	while leftIndex < left.count && rightIndex < right.count {
		let leftElement = left[leftIndex]
		let rightElement = right[rightIndex]


		if leftElement < rightElement {
			orderedArray.append(leftElement)
			leftIndex += 1
		} else if leftElement > rightElement {
			orderedArray.append(rightElement)
			rightIndex += 1
		} else { // if both elemets are equal
			orderedArray.append(leftElement)
			leftIndex += 1
			orderedArray.append(rightElement)
			rightIndex += 1
		}
	}

	// 2.2
	while leftIndex < left.count {
		orderedArray.append(left[leftIndex])
		leftIndex += 1
	}

	while rightIndex < right.count {
		orderedArray.append(right[rightIndex])
		rightIndex += 1
	}

	return orderedArray
}

func mergeSort(_ array: [Int]) -> [Int] {
	// 1. Check if there a single element and return it because it's already sorted
	// It's a base case for any recursion functions
	guard array.count > 1 else { return array }

	// 2. Split an array into the small ones until you can't do it anymore
	// Recursion gives us ability to try split an array again and again until base case of recursion will drop us from the function
	let middleIndex = array.count / 2

	let leftArray = mergeSort(Array(array[0..<middleIndex]))
	let rightArray = mergeSort(Array(array[middleIndex..<array.count]))

	return merge(leftArray, rightArray)
}

/*
 MergeSort([5, 3, 8, 4, 2, 6, 1, 7])
 |
 |-- MergeSort([5, 3, 8, 4])
 |   |
 |   |-- MergeSort([5, 3])
 |   |   |
 |   |   |-- MergeSort([5])
 |   |   |-- MergeSort([3])
 |   |   |-- Merge([5], [3]) -> [3, 5]
 |   |
 |   |-- MergeSort([8, 4])
 |   |   |
 |   |   |-- MergeSort([8])
 |   |   |-- MergeSort([4])
 |   |   |-- Merge([8], [4]) -> [4, 8]
 |   |
 |   |-- Merge([3, 5], [4, 8]) -> [3, 4, 5, 8]
 |
 |-- MergeSort([2, 6, 1, 7])
	 |
	 |-- MergeSort([2, 6])
	 |   |
	 |   |-- MergeSort([2])
	 |   |-- MergeSort([6])
	 |   |-- Merge([2], [6]) -> [2, 6]
	 |
	 |-- MergeSort([1, 7])
	 |   |
	 |   |-- MergeSort([1])
	 |   |-- MergeSort([7])
	 |   |-- Merge([1], [7]) -> [1, 7]
	 |
	 |-- Merge([2, 6], [1, 7]) -> [1, 2, 6, 7]

 Merge([3, 4, 5, 8], [1, 2, 6, 7]) -> [1, 2, 3, 4, 5, 6, 7, 8]
 */

// MARK: - An implementation with generics from Swift Algorithm club

func mergeSort<T: Comparable>(_ array: [T]) -> [T] {
  guard array.count > 1 else { return array }
  let middleIndex = array.count / 2
  let leftArray = mergeSort(Array(array[0..<middleIndex]))
  let rightArray = mergeSort(Array(array[middleIndex..<array.count]))
  return merge(leftPile: leftArray, rightPile: rightArray)
}

func merge<T: Comparable>(leftPile: [T], rightPile: [T]) -> [T] {
  var leftIndex = 0
  var rightIndex = 0
  var orderedPile: [T] = []
  if orderedPile.capacity < leftPile.count + rightPile.count {
	orderedPile.reserveCapacity(leftPile.count + rightPile.count)
  }

  while true {
	  guard leftIndex < leftPile.endIndex else {
		  orderedPile.append(contentsOf: rightPile[rightIndex..<rightPile.endIndex])
		  break
	  }
	  guard rightIndex < rightPile.endIndex else {
		  orderedPile.append(contentsOf: leftPile[leftIndex..<leftPile.endIndex])
		  break
	  }

	  if leftPile[leftIndex] < rightPile[rightIndex] {
		  orderedPile.append(leftPile[leftIndex])
		  leftIndex += 1
	  } else {
		  orderedPile.append(rightPile[rightIndex])
		  rightIndex += 1
	  }
  }


  return orderedPile
}

/*
  This is an iterative bottom-up implementation. Instead of recursively splitting
  up the array into smaller sublists, it immediately starts merging the individual
  array elements.

  As the algorithm works its way up, it no longer merges individual elements but
  larger and larger subarrays, until eventually the entire array is merged and
  sorted.

  To avoid allocating many temporary array objects, it uses double-buffering with
  just two arrays.
*/
func mergeSortBottomUp<T>(_ a: [T], _ isOrderedBefore: (T, T) -> Bool) -> [T] {
  let n = a.count
  var z = [a, a]   // the two working arrays
  var d = 0        // z[d] is used for reading, z[1 - d] for writing

  var width = 1
  while width < n {

	var i = 0
	while i < n {

	  var j = i
	  var l = i
	  var r = i + width

	  let lmax = min(l + width, n)
	  let rmax = min(r + width, n)

	  while l < lmax && r < rmax {
		if isOrderedBefore(z[d][l], z[d][r]) {
		  z[1 - d][j] = z[d][l]
		  l += 1
		} else {
		  z[1 - d][j] = z[d][r]
		  r += 1
		}
		j += 1
	  }
	  while l < lmax {
		z[1 - d][j] = z[d][l]
		j += 1
		l += 1
	  }
	  while r < rmax {
		z[1 - d][j] = z[d][r]
		j += 1
		r += 1
	  }

	  i += width*2
	}

	width *= 2   // in each step, the subarray to merge becomes larger
	d = 1 - d    // swap active array
  }
  return z[d]
}
