import Foundation

public struct Stack<Element> {

	// O(n) Memory
	private var storage: [Element] = []

	public init(_ elements: [Element]) {
		storage = elements
	}

	// O(1)
	public mutating func push(_ element: Element) {
		storage.append(element)
	}

	// O(n)
	@discardableResult
	public mutating func pop() -> Element? {
		storage.popLast()
	}

	public func peek() -> Element? {
		storage.last
	}

	public var isEmpty: Bool {
		peek() == nil
	}
}
