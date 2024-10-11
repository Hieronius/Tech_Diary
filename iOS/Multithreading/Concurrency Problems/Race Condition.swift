import Foundation

let queue = DispatchQueue(label: "Queue", attributes: .concurrent)
var value = 0

func changeValue() {
	for _ in 1...1000 {
		value += 1
	}
}

// Launch multiple asynchronous tasks
let group = DispatchGroup()

for _ in 1...10 {
	group.enter()
	queue.async {
		changeValue()
		group.leave()
	}
}

// Wait for all tasks to complete
group.wait()

print("Final value: \(value)")
