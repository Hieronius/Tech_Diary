// readLine() reads input with  THEORETICAL O(n) speed.
// but if in our problem description we can see something like "two numbers separated by space" it's mean that EFFECTIVE or REAL speed will be constant O(1)
// If your algorithm contains a few steps with different O(n), O(1) or O(n2) the overall algorithm complexity will be the slowest one - O(n2). Like in army
// Still don't know how to measure a real speed of the algorithms such as a given on - 2sec
// DONT FORGET TO INCLUDE FOUNDATION. THIS ONLINE COMPILER SUCKS
// You can use function to wrap up solution as you did in LeetCode
// split() is more memory efficient

// https://contest.yandex.ru/contest/3/finish/ - YandexContest for practice

//import Foundation
//
//func getSum() {
//
//	guard let input = readLine() else { return }
//
//	let nums = input.split(separator: " ")
//
//	guard nums.count == 2, let numA = Int(nums[0]), let numB = Int(nums[1]) else { return }
//
//	print(numA + numB)
//
//}
//
//getSum()
