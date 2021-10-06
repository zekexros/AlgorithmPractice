import Foundation

func solution(_ s:String) -> Int {
    var dict = [String : String]()
    let number = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten"]
    for (index, element) in number.enumerated() {
        dict[element] = String(index)
    }
    
    var stack = [String]()
    var result = ""
    result.replacingOccurrences(of: "1", with: "z")
    
    
    s.forEach { char in
        if let number = Int(String(char)) {
            result += String(number)
            return
        }
        
        stack.append(String(char))
        
        if let number = dict[stack.joined()] {
            result += number
            stack.removeAll()
        }
    }
    
    return Int(result)!
}
