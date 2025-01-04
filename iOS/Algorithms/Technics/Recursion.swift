//
//  Recursion.swift
//  Tech Diary
//
//  Created by Арсентий Халимовский on 16.11.2024.
//

import Foundation

func reverseString(_ str: String) -> String {
	// Base case: if the string is empty or has one character
	if str.count <= 1 {
		return str
	}
	// Recursive case: reverse the substring and append the first character
	let lastCharacter = str.last!
	let remainingString = String(str.dropLast())
	return String(lastCharacter) + reverseString(remainingString)
}

// Example usage
let original = "hello"
let reversed = reverseString(original)
print("Reversed string: \(reversed)") // Output: "olleh"
