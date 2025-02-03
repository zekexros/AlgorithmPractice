func solution(_ s:String) -> String {
	let words = s.components(separatedBy: " ")
	return words.map { $0.enumerated().map { $0.offset % 2 == 1 ? $0.element.lowercased() : $0.element.uppercased() }.joined() }.joined(separator: " ")
}