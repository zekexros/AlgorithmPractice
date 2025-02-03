import Foundation

func solution(_ s:String) -> Int {
	var result = 0
	calculator(word: s, result: &result)
	return result
}

func calculator(word: String, result: inout Int) {
	if word.isEmpty {
		return
	}
	
	var standard = ""
	var xNum: Int = 0
	var notXNum: Int = 0
	
	for (i, char) in word.enumerated() {
		if i == 0 {
			standard = String(char)
			xNum += 1
		} else if String(char) == standard {
			xNum += 1
		} else {
			notXNum += 1
		}
		
		if xNum == notXNum, xNum != 0 {
			result += 1
			let index = word.index(word.startIndex, offsetBy: i + 1)
			let nextWord = String(word.suffix(from: index))
			calculator(word: nextWord, result: &result)
			return
		} else if i == word.count - 1 {
			result += 1
			return
		}
	}
}