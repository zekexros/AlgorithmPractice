import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
	var cards1 = cards1
	var cards2 = cards2
	for word in goal {
		if let index = cards1.firstIndex(of: word), index < 1 {
			cards1.removeFirst(1)
		} else if let index = cards2.firstIndex(of: word), index < 1 {
			cards2.removeFirst(1)
		} else {
			return "No"
		}
	}
	return "Yes"
}