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

// 1.

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

// 2. Linear Sort

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
