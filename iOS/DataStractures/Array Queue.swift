import Foundation

// MARK: - Array Queue Implementation

struct Queue<T> {

	// O(n)
	private var storage: [T] = []

	// O(1)
	var isEmpty: Bool {
		storage.isEmpty
	}

	var count: Int {
		storage.count
	}

	// O(1)
	mutating func enqueue(_ element: T) {
		storage.append(element)
	}

	// O(n) - should shift all remaining elements
	mutating func dequeue() -> T? {
		if isEmpty {
			return nil
		} else {
			return storage.removeFirst()
		}
	}

	// O(1)
	func peek() -> T? {
		storage.first
	}


}
