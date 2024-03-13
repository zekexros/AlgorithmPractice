import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }

let bookNum = input[0]
let maxNum = input[1]
let bookPosition = readLine()!.split(separator: " ").map { Int($0)! }
let positive = bookPosition.filter { $0 > 0 }.sorted(by: >)
let negative = bookPosition.filter { $0 < 0 }.sorted(by: <)

func test() -> Int {
	if positive.isEmpty && !negative.isEmpty {
		let negativeChunked = negative.chunked(into: maxNum)
		let negativeSteps = abs(negativeChunked.map { $0.min()! * 2 }.reduce(0, +)) - abs(negative.min()!)
		return negativeSteps
	} else if !positive.isEmpty && negative.isEmpty {
		let positiveChunked = positive.chunked(into: maxNum)
		let positiveSteps = positiveChunked.map { $0.max()! * 2 }.reduce(0, +) - positive.max()!
		return positiveSteps
	} else {
		if abs(positive.max()!) > abs(negative.min()!) {
			let negativeChunked = negative.chunked(into: maxNum)
			let negativeSteps = abs(negativeChunked.map { $0.min()! * 2 }.reduce(0, +))
			let positiveChunked = positive.chunked(into: maxNum)
			let positiveSteps = positiveChunked.map { $0.max()! * 2 }.reduce(0, +) - positive.max()!
			return positiveSteps + negativeSteps
		} else {
			let positiveChunked = positive.chunked(into: maxNum)
			let positiveSteps = positiveChunked.map { $0.max()! * 2 }.reduce(0, +)
			let negativeChunked = negative.chunked(into: maxNum)
			let negativeSteps = abs(negativeChunked.map { $0.min()! * 2 }.reduce(0, +)) - abs(negative.min()!)
			return positiveSteps + negativeSteps
		}
	}
}
extension Array {
	func chunked(into size: Int) -> [[Element]] {
		return stride(from: 0, to: count, by: size).map {
			Array(self[$0 ..< Swift.min($0 + size, count)])
		}
	}
}

print(test())
