import Foundation

class Solution {
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var result = [[Int]]()
        dfs(result: &result, target: target, combination: [], candidates: candidates)
        return result
    }
    
    func dfs(result: inout [[Int]], target: Int, combination: [Int], candidates: [Int], k: Int = 0) {
        
        var combination = combination
        let sum = combination.reduce(0, +)
        
        if sum == target {
            result.append(combination)
            return
        } else if sum > target {
            return
        }
        
        for i in k..<candidates.count {
            combination.append(candidates[i])
            dfs(result: &result, target: target, combination: combination, candidates:  candidates, k: i)
            combination.removeLast()
        }
        
        
    }
}
