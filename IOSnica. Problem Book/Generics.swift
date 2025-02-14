import Foundation

// MARK: Generics

// MARK: Problem N 217.A. Generic function to find a maximum value in array. Simulate max()

extension Array where Element: Comparable {

	func findMax() -> Element? {

		guard !self.isEmpty else { return nil }

		var maxValue = self[0]

		for element in self {
			if element > maxValue { maxValue = element }
		}

		return maxValue
	}
}

// MARK: Problem N 217.B. Generic function to find a minimum value in array. Simulate min()

extension Array where Element: Comparable {

	func findMin() -> Element? {

		guard !self.isEmpty else { return nil }

		var minValue = self[0]

		for element in self {
			if element < minValue { minValue = element }
		}

		return minValue
	}
}

// MARK: Problem N 218 - Concatenation of Generic Arrays

func concatenateArrays<T, U>(_ array1: [T], _ array2: [U]) -> [Any] {

	var buffer: [Any] = []

	buffer.append(contentsOf: array1)
	buffer.append(contentsOf: array2)

	return buffer
}

// MARK: Problem N 219 - Array Inversion

func reverseArray<T>(_ array: [T]) -> [T] {

	var buffer: [T] = array

	var leftIndex = 0
	var rightIndex = buffer.count - 1

	while leftIndex < rightIndex {

		let temp = buffer[leftIndex]
		buffer[leftIndex] = buffer[rightIndex]
		buffer[rightIndex] = temp
		leftIndex += 1
		rightIndex -= 1
	}

	return buffer
}

// MARK: Problem N 220 - Swap Values

func swapValues<T>(_ firstValue: inout T, _ secondValue: inout T) {

	let temp = firstValue
	firstValue = secondValue
	secondValue = temp
}

// MARK: Problem N 221 - Generic Stack

struct Stack<T> {

	private var storage: [T] = []

	var isEmpty: Bool {
		storage.first == nil
	}

	var count: Int {
		var counter = 0
		for _ in storage {
			counter += 1
		}
		return counter
	}

	init() {
		self.storage.reserveCapacity(10)
	}

	mutating func push(_ element: T) {
		storage.append(element)
	}

	mutating func pop() -> T? {
		storage.popLast()
	}

	func peek() -> T? {
		guard !isEmpty, let element = storage.last else { return nil }
		return element
	}
}

// MARK: Problem N 222 - Data Cashing

struct Caсhe<Key, Value> where Key: Hashable {

	private var cash: [Key: Value] = [:]

	mutating func saveData(_ data: Value, forKey: Key) {
		cash[forKey] = data
	}

	func value(forKey: Key) -> Value? {
		cash[forKey]
	}

	mutating func removeValue(forKey: Key) {
		cash[forKey] = nil
	}
}

// MARK: Problem N 223 - Average value in Array

extension Array where Element: Numeric {

	func findAverageValue() -> Double? {

		guard !self.isEmpty else { return nil }

		let length = self.count
		var average = self[0]

		for num in 1..<length {
			average += self[num]
		}

		return Double(truncating: average as! NSNumber) / Double(length)
	}
}

// MARK: Problem 224 - An array of unique values

func getArrayOfUniqueElements<T: Equatable>(_ firstArray: [T], _ secondArray: [T]) -> [T] {

	var result: [T] = []

	for element in firstArray {
		guard !result.contains(element) else { continue }
		result.append(element)
	}

	for element in secondArray {
		guard !firstArray.contains(element) else { continue }
		result.append(element)
	}
	return result
}

// MARK: Problem 225 - Filtering an Array by condition

let stringAr = ["a", "b", "a", "b", "c"]
let intAr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

extension Array {

	func filterBy(_ isIncluded: (Element) -> Bool) -> [Element] {

		var buffer: [Element] = []

		for element in self {
			if isIncluded(element) {
				buffer.append(element)
			}
		}

		return buffer
	}
}

// MARK: 226 - Concatenation of an array of String into a single string

func arraysJoined<T: LosslessStringConvertible>(_ array: [T]) -> String {

	var buffer = ""

	for string in array {
		buffer.append(String(string))
	}

	return buffer
}

// MARK: 227 - Calculation distance between Points

protocol ConvertibleToDouble {
	var doubleProperty: Double { get }
}

extension Int: ConvertibleToDouble {

	var doubleProperty: Double {
		Double(self)
	}
}

extension Double: ConvertibleToDouble {

	var doubleProperty: Double {
		self
	}
}

extension Decimal: ConvertibleToDouble {

	var doubleProperty: Double {
		NSDecimalNumber(decimal: self).doubleValue
	}
}

extension Float: ConvertibleToDouble {

	var doubleProperty: Double {
		Double(self)
	}
}

struct Point<T: ConvertibleToDouble> {
	var x: T
	var y: T
}

func calculateDistance<T: ConvertibleToDouble>(from: Point<T>, to: Point<T>) -> Double {

	let a = from.x.doubleProperty - to.x.doubleProperty
	let b = from.y.doubleProperty - to.y.doubleProperty
	let c = sqrt(pow(a, 2) + (pow(b, 2)))

	return c
}

// MARK: 228 - Custom Collection with Associated Type

protocol CustomCollection {

	associatedtype Item: Equatable

	var items: [Item] { get set }

	mutating func insert(_ item: Item, at index: Int)
	mutating func remove(at index: Int) -> Item?
}

struct MyCollection<T: Equatable>: CustomCollection {

	typealias Item = T

	var items: [Item] = []

	mutating func insert(_ item: Item, at index: Int) {
		self.items.insert(item, at: index)
	}

	@discardableResult
	mutating func remove(at index: Int) -> Item? {
		return self.items.remove(at: index)
	}
}

var stringCollection = MyCollection<String>()
var intCollection = MyCollection<Int>()

// MARK: 229 - Calculation figure's volume

protocol Shape {

	associatedtype Size: Numeric
	func area() -> Size
}

enum Rectangle<T: Numeric>: Shape {
	typealias Size = T

	case dimensions(a: T, b: T)

	func area() -> Size {
		switch self {
		case .dimensions(let a, let b):
			return a * b
		}
	}
}

struct Circle<T: Numeric>: Shape {
	typealias Size = T

	var a: T
	var b: T

	func area() -> Size {
		self.a * self.b
	}

}
