//
//  Constants:Variables.swift
//  Tech Diary
//
//  Created by Арсентий Халимовский on 15.12.2024.
//

import Foundation

// MARK: 1. Напишите переменные и константы всех базовых типов данных: int, UInt, float, double, string. У чисел вывести их минимальные и максимальные значения.

 let intVar: Int = 5
 var intLet: Int = 10
// print(Int.min)
// print(Int.max)

 let uIntLet: UInt = 5
 var	uIntVar: UInt = 10
// print(UInt.min)
// print(UInt.max)

 let floatLet: Float = 5
 var floatVar: Float = 10
// print(Float.greatestFiniteMagnitude)
// print(-Float.greatestFiniteMagnitude)

 let doubleLet: Double = 5
 var doubleVar: Double = 10
// print(Double.greatestFiniteMagnitude)
// print(-Double.greatestFiniteMagnitude)

 let stringLet: String = "This is String constant"
 var stringVar: String = "This is String variable"

// MARK: - 2. Создайте список товаров с различными характеристиками (количество, название). Используйте typealias.

typealias ProductAmount = Int
typealias ProductName = String
typealias Product = (ProductName, ProductAmount)
var productList: [Product] = [
	("Banana", 3),
	("Milk", 1),
	("Eggs", 10),
	("Mars", 1),
	("Coffee", 2)
]

// MARK: 3. Напишите различные выражения с приведением типа.


let anyAr: [Any] = [3, "Apple", 3.14, "c"]
let num: Int = anyAr[0] as? Int ?? 0
let word: String = anyAr[1] as? String ?? ""
let bigNum = anyAr[2] as? Double ?? 1.11
let char = anyAr[3] as? Character ?? "a"

class Animal {
	func eat() { }
}

class Dog: Animal {

}

let doggy = Animal()
let Crusty = doggy as? Dog ?? Dog()

let animalAr: [Animal] = []
let doggyAr = animalAr as? [Dog] ?? [Dog()]

class Car {
	func drive() { }
}

class Volvo: Car {

}

let arOfCars: [AnyObject] = [Car(), Car(), Car()]
let myCar = arOfCars[0] as? Volvo ?? Volvo()
guard let hisCar = arOfCars[1] as? Volvo else { return Volvo() }


// MARK: - 4. Вычисления с операторами (умножение, деление, сложение, вычитание): создайте консольный калькулятор.



func calculator() {

	print("Enter data for calculation")
	while let inputString = readLine() {

		var input: [String] = []

		for char in inputString.sepa {
			input.append(String(char))
		}

		guard let firstNum = Int(input[0]) else { return }
		let action = input[1]
		guard let secondNum = Int(input[2]) else { return }

		func addition(_ lhs: Int, _ rhs: Int) {

		}

		func subtract(_ lhs: Int, _ rhs: Int) {

		}

		func multiply(_ lhs: Int, _ rhs: Int) {

		}

		func divide(_ lhs: Int, _ rhs: Int) {

		}

		func modulo(_ lhs: Int, _ rhs: Int) {

		}

		switch action {
		case "+":
			print(firstNum + secondNum)
		case "-":
			print(firstNum - secondNum)
		case "*":
			print(firstNum * secondNum)
		case "/":
			print(firstNum / secondNum)
		case "%":
			print(firstNum % secondNum)
		default:
			print("unknown operator")
			return
		}
	}

}
