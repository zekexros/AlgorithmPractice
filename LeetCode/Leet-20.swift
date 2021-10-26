import Foundation

class Solution {
    func isValid(_ s: String) -> Bool {
        var table = [")":"(", "]":"[", "}":"{"]
        
        if s.count%2 == 1 {
            return false
        }
        var stack = [String]()
        
        for i in s {
            let i = String(i)
            if isOpen(char: i) {
                stack.append(i)
            } else if !isOpen(char: i), !stack.isEmpty {
                let element = stack.removeLast()
                if element != table[i] {
                    return false
                }
            } else {
                return false
            }
        }
        
        return stack.isEmpty ? true : false
    }
                   
    func isOpen(char: String) -> Bool {
        if char == "(" || char == "[" || char == "{" {
            return true
        } else {
            return false
        }
    }
}
