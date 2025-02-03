import Foundation

func solution(_ t:String, _ p:String) -> Int {
	let pLength = p.count
	var result = 0
	for i in 0..<t.count {
		if i + pLength - 1 > t.count - 1 /*last index*/ {
			break
		}
		
		let startIndex = t.startIndex
		let firstIndex = t.index(startIndex, offsetBy: i)
		let lastIndex = t.index(firstIndex, offsetBy: pLength - 1)
		
		let extraction = String(t[firstIndex...lastIndex])
		result = extraction <= p ? result + 1 : result
	}

	return result
}