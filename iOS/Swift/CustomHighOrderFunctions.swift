import Foundation

// MARK: Generics

// MARK: Generic function to find a maximum value in array. Simulate max()

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

// MARK: Generic function to find a minimum value in array. Simulate min()

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
