import Foundation

class Solution {
    var dict = ["2": ["a", "b" ,"c"], "3": ["d", "e", "f"], "4": ["g", "h", "i"], "5": ["j", "k", "l"], "6": ["m", "n", "o"], "7": ["p", "q", "r", "s"], "8": ["t", "u", "v"], "9": ["w", "x", "y", "z"]]
    
    func letterCombinations(_ digits: String) -> [String] {
        var combination = [String]()
        let digits = digits.map { String($0) }
        dfs(combination: &combination, result: "", digits: digits)
        return combination
    }
    
    func dfs(combination: inout [String], result: String, depth: Int = 1, digits: [String]) {
        
        if digits.count == result.count {
            if digits.count == 0 {
                return
            }
            combination.append(result)
            return
        }
        
        for i in dict[digits[depth-1]]! {
            dfs(combination: &combination, result: result + i, depth: depth+1, digits: digits)
        }
        
    }
}
