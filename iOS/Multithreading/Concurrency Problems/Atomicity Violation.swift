// MARK: By this code the operation to increment the count property can lose it's atomic status + Race Condition

/*
 import Foundation

 var count = 0

 let thread1 = Thread {
 for _ in 0...999 {
 count += 1
 }
 }

 let thread2 = Thread {
 for _ in 0...999 {
 count += 1
 }
 }

 thread1.start()
 thread2.start()

 thread1.join() // Wait for thread1 to finish
 thread2.join() // Wait for thread2 to finish

 print("Final count: \(count)")
 */
