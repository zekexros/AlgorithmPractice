import Foundation
class Solution {
    func climbStairs(_ n: Int) -> Int {
        let k = n-1
        var dp = [1,2]
        
        if k < 2 {
            return dp[k]
        }
        for i in 2...k {
            dp.append(dp[i-1] + dp[i-2])
        }
        return dp[k]
    }
}
