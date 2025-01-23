import Foundation

// MARK: 3. Arrays. General

protocol Student: Equatable {
	var name: String { get set }
	var score: Int { get set }
}

struct Boy: Student {
	var name: String
	var score = 0
}

struct Girl: Student {
	var name: String
	var score = 0
}

var students: [any Student] = [
	Boy(name: "Victor"),
	Boy(name: "Sonic"),
	Boy(name: "Alex"),
	Boy(name: "Bob"),
	Boy(name: "Scot"),
	Boy(name: "Andre"),
	Boy(name: "Richard"),
	Boy(name: "Silvester"),
	Boy(name: "Arnold"),
	Boy(name: "MachoMan"),
	Boy(name: "Hulk"),
	Boy(name: "Donald")
]

students.append(Girl(name:"Zoya"))
students.append(Girl(name:"Sveta"))
students.insert(Girl(name:"Anna"), at: 0)
students.insert(Girl(name:"Sakura"), at: students.count/2 - 1)
students.insert(Girl(name:"Melody"), at: students.endIndex - 1)

var boysCounter = 0
var arrayToModify = students

var index = 0
while boysCounter < 7 {
	if arrayToModify[index] is Boy {
		arrayToModify.remove(at: index)
		boysCounter += 1
	} else {
		index += 1
	}
}

let gradesAr1 = [0, 1, 2, 3, 4, 5]
let gradesAr2 = [6, 7, 8, 9, 10]

let grades = gradesAr1 + gradesAr2

for (index, grade) in grades.enumerated() {
	students[index].score = grade
}

let currencyAr = [1, 5, 10, 20, 50, 100]
let currencySum = currencyAr.reduce(0, +)

// MARK: 3. Arrays. Advanced

// MARK: 1

var country1 = "France"
var country2 = "England"
var country3 = "Japan"
var country4 = "USA"
var country5 = "Russia"
var country6 = "China"
var country7 = "Argentina"
var country8 = "Belgium"
var country9 = "Spain"
var country10 = "Italy"

var countries: [String] = []

func checkString(_ string: String) {
	var temp = string
	if temp.count > 5 {
		if temp.contains("A") {
			let aIndex = temp.firstIndex(of: "A")!
			temp.remove(at: aIndex)
			temp.insert("B", at: aIndex)
		}
		countries.append(temp)
	}
}

checkString(country1)
checkString(country2)
checkString(country3)
checkString(country4)
checkString(country5)
checkString(country6)
checkString(country7)
checkString(country8)
checkString(country9)
checkString(country10)

// MARK: 2. Linear Sort

var values = [5, 10, 1, 100, 25, 8, 10, 95, 3, 2, 37, 49]

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

// MARK: Bubble sort

func bubbleSort(_ array: inout [Int]) -> [Int] {


	for iteration in 1...array.count {

		var swapped = false
		var leftIndex = 0
		var rightIndex = leftIndex + 1

		while leftIndex < array.count - iteration {

			if array[leftIndex] > array[rightIndex] {
				swapAt(array[leftIndex], array[rightIndex])
				swapped = true

			}
			leftIndex += 1
			rightIndex += 1
		}
		if !swapped { break }
	}

	return array
}

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

// MARK: Optimised Bubble sort (Shaker Sort)

func shakerSort(_ array: inout [Int]) -> [Int] {

	// So the hint is to traverse an array from start to end and from end to start each iteration

	for iteration in 0..<array.count - 1 {

		var swapped = false
		var leftIndex = 0
		var rightIndex = leftIndex + 1

		// Traverse from left to right

		while rightIndex < array.count - iteration {

			if array[leftIndex] > array[rightIndex] {
				array.swapAt(leftIndex, rightIndex)
				swapped = true
			}
			leftIndex += 1
			rightIndex += 1

		}

		rightIndex = array.count - iteration - 2
		leftIndex = rightIndex - 1

		// Traverse from right to left

		while leftIndex > iteration {

			if array[leftIndex] > array[rightIndex] {
				array.swapAt(leftIndex, rightIndex)
				swapped = true
			}
			leftIndex -= 1
			rightIndex -= 1
		}

		if !swapped { break }

	}
	return array
}

// MARK: Even-odd sort

func evenOddSort(_ array: inout [Int]) -> [Int] {

	var swapped = true

	while swapped {

		swapped = false
		var evenIndex = 0
		var oddIndex = 1

		while evenIndex < array.count - 1 {
			if array[evenIndex] > array[evenIndex + 1] {
				array.swapAt(evenIndex, evenIndex + 1)
				swapped = true
			}
			evenIndex += 2
		}

		while oddIndex < array.count - 1 {
			if array[oddIndex] > array[oddIndex + 1] {
				array.swapAt(oddIndex, oddIndex + 1)
				swapped = true
			}
			oddIndex += 2
		}

		if !swapped { break }
	}
	return array
}
