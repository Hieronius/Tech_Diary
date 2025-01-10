import Foundation

// MARK: 2. Strings

// 1

let myFirstName = "Arsenty"
let myLastName = "Khalimovsky"
let myAge = "33"
let myPlace = "Moscow"
let myHobby = "Starcraft"

// 2

let bigString = """
Hello
My first name is \(myFirstName)
My last name is \(myLastName)
My age is \(myAge)
My area is \(myPlace)
My hobby is \(myHobby)
"""

// 3

let string1 = "string1"
let string2 = "string2"
let string3 = "string3"
let string4 = "string4"
let string5 = "string5"
let string6 = "string6"
let string7 = "string7"
let string8 = "string8"
let string9 = "string9"
let string10 = "string10"

// 4

let bigString2 = """
\(string1)\n\t\(string2) \n\t\t \(string3) \n\t\t\t \(string4) \n\t\t\t\t \(string5) \n\t\t\t\t\t \(string6) \n\t\t\t\t\t\t \(string7) \n\t\t\t\t\t\t\t
\(string8) \n\t\t\t\t\t\t\t\t \(string9) \n\t\t\t\t\t\t\t\t\t \(string10) \n
"""

let newName = "Arsenty"
for char in newName {
	print("\(char)")
}

// 5

let intNum = 10
let stringNum = "10"
let result = String(intNum) + stringNum

// MARK: Advanced level

// 1

let city1 = "Moscow"
let city2 = "Tokyo"
let city3 = "London"
let city4 = "Paris"
let city5 = "Berlin"
let country1 = "Russia"
let country2 = "Germany"
let country3 = "Japan"
let country4 = "France"
let country5 = "England"

func checkPlace(city: String, country: String) {

	switch (city, country) {

	case ("Moscow", "Russia"),
		("Tokyo", "Japan"),
		("London", "England"),
		("Paris", "France"),
		("Berlin", "Germany"):
		print("\(city) city belongs to \(country). This is CORRECT!")

	default:
		print("\(city) city does not belongs to \(country). This is WRONG!")
	}
}

// 2

func checkCountry(_ country: String, _ letter: Character) {

	let result = country.contains(letter)
	if result {
		print("Country \(country) contains the letter - \(letter)")
	} else {
		print("Country \(country) does not contain the letter - \(letter)")
	}
}

// 3, 4, 5
let string = "Набор кириллицей"
let highString = string.uppercased()

for (index, char) in string.enumerated() {
	print("\(index) index belongs to letter \(char)")
}
