import Foundation

/// Performs the bubble sort algorithm in the array
///
/// - Parameter elements: a array of elements that implement the Comparable protocol
/// - Returns: an array with the same elements but in order
public func bubbleSort<T> (_ elements: [T]) -> [T] where T: Comparable {
  return bubbleSort(elements, <)
}

public func bubbleSort<T> (_ elements: [T], _ comparison: (T,T) -> Bool) -> [T]  {
  var array = elements

  for i in 0..<array.count {
	for j in 1..<array.count-i {
	  if comparison(array[j], array[j-1]) {
		let tmp = array[j-1]
		array[j-1] = array[j]
		array[j] = tmp
	  }
	}
  }

  return array
}
