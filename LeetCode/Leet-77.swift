import Foundation

class Solution {
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        var result = [[Int]]()
        dfs(result: &result, combination: [], n: n, k: k)
        return result
    }
    
    func dfs(result: inout [[Int]], combination: [Int], n: Int, k: Int, next: Int = 1) {
        var combination = combination
        
        if combination.count == k {
            result.append(combination)
            return
        }
        
        if n >= next {
            for i in next...n {
                combination.append(i)
                dfs(result: &result, combination: combination, n: n, k: k, next: i+1)
                combination.removeLast()
            }
        }
        
    }
}
