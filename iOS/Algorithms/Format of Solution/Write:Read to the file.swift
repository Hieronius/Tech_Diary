//
//  Write:Read to the file.swift
//  Tech Diary
//
//  Created by Халимовский Арсентий Владимирович on 02.09.2024.
//

//import Foundation
//
//let fileName = "input.txt"
//
//func readNums() {
//  // Try to open input.txt and forget about error handling
//	guard let line = try? String(contentsOfFile: fileName) else {
//		return
//	}
//  // Directly say to cut file into strings and add it to split array
//	let split = line.split(separator: "\n")
//
//  // Check is there is only one element in split array (single line)
//	guard split.count == 1 else {
//		return
//	}
//
//  // Proceed the work of solving the task
//	let nums = split[0].split(separator: " ")
//	guard nums.count == 2, let a = Int(nums[0]), let b = Int(nums[1]) else {
//		return
//	}
//	let result = String(a + b)
//	try? result.write(toFile: "output.txt", atomically: true, encoding: .utf8)
//}
//
//readNums()
