import Foundation

func linearSort(_ array: [Int]) -> [Int] {

	var tempAr = array
	var leftIndex = 0
	var rightIndex = 1
	var minValue = tempAr[leftIndex]
	var minValueIndex = leftIndex

	while leftIndex < tempAr.count - 1 {

		while rightIndex < tempAr.count {

			if minValue > tempAr[rightIndex] {
				minValue = tempAr[rightIndex]
				minValueIndex = rightIndex
			}
			rightIndex += 1
		}
		let temp = tempAr[leftIndex]
		tempAr[leftIndex] = minValue
		tempAr[minValueIndex] = temp
		leftIndex += 1
		rightIndex = leftIndex + 1
		minValue = tempAr[leftIndex]
	}
	return tempAr
}
