import Foundation

let monthDictRU: [String: Int] = [

	"Январь": 1,
	"Февраль": 2,
	"Март": 3,
	"Апрель": 4,
	"Май": 5,
	"Июнь": 6,
	"Июль": 7,
	"Август": 8,
	"Сентябрь": 9,
	"Октябрь": 10,
	"Ноябрь": 11,
	"Декабрь": 12
]
print(monthDictRU.keys)
print(monthDictRU.values)

let monthDictEN: [String: Int] = [

	"January": 1,
	"February": 2,
	"March": 3,
	"April": 4,
	"May": 5,
	"June": 6,
	"July": 7,
	"August": 8,
	"September": 9,
	"October": 10,
	"November": 11,
	"December": 12

]

monthDictEN.map { value in
	print(value.key)
	print(value.value)
}

let charsFrequency: [Character: Int] = [

	"a": 0,
	"b": 0,
	"c": 0,
	"d": 0,
	"e": 0,
	"g": 0,
	"k": 0,
	"n": 0
]

for key in charsFrequency.keys {
	print(charsFrequency[key] ?? 0)
}

let studentsGrades: [String: Int] = [

	"Stuart": 5,
	"Lesly": 4,
	"Anna": 3,
	"Antony": 5,
	"Goward": 3,
	"Silvester": 4
]

print(studentsGrades.keys)
print(studentsGrades.values)

let emailsBook: [String: String] = [

	"Samanta": "Samanta@gmail.com",
	"Lebron": "James@mail.ru",
	"Donald": "Trump@yahoo.com",
	"Barak": "Obama@gmail.com",
	"Vladimir": "Putin@rf.ru"
]

print(emailsBook.keys)
print(emailsBook.values)

let groceryList: [String: Double] = [

	"Banana": 2.5,
	"Cabbage": 5.0,
	"Beef": 0.5,
	"Cucumber": 1.0,
	"Tomatoes": 2.0
]

print(groceryList.keys)
print(groceryList.values)

let userPreferences: [String: String] = [

	"Color Theme": "Dark",
	"Memory Storage": "CoreData",
	"Share notes": "Yes",
	"isInitialLoad": "False",
	"PasscodeOn": "false",
	"LeftHand Mode": "false"
]

print(userPreferences.keys)
print(userPreferences.values)

let wordsDefinition: [String: String] = [

	"Russian": "Русский",
	"Spoon": "Ложка",
	"Bear": "Медведь",
	"Silver": "Серебряный"
]

print(wordsDefinition.keys)
print(wordsDefinition.values)

let movieRatings: [String: Double] = [

	"She-Hulk": 2.0,
	"Thor": 4.0,
	"Iron Man": 5.0,
	"Spider Man": 4.5,
	"Vikings": 4.0
]

print(movieRatings.keys)
print(movieRatings.values)

let votes: [String: Int] = [

	"Bush": 150_000,
	"Obama": 230_000,
	"Trump": 350_000,
	"Biden": 180_000,
	"Klinton": 150_000
]

print(votes.keys)
print(votes.values)

let sequence = Array(zip(votes.keys, votes.values))
print(sequence)

var dictToCheck: [String: Int] = [:]

if dictToCheck.isEmpty {
	dictToCheck["example1"] = 1
	dictToCheck["example2"] = 2
}

print(dictToCheck)

var vehicles: [String: String] = [

	"Foreign": "AUDI",
	"Domestic": "LADA"



]

vehicles["Foreign"] = nil
vehicles.removeValue(forKey: "Domestic")
print(vehicles)
