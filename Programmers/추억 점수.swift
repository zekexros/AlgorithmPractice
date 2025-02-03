import Foundation
func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
	var score: [String: Int] = [:]
	zip(name, yearning).forEach { score.updateValue($1, forKey: $0) }
	return photo.map { $0.reduce(0) { $0 + (score[$1] ?? 0) } }
}