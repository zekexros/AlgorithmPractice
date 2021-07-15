import Foundation
class Solution {
    func climbStairs(_ n: Int) -> Int {
        let k = n-1
        var dp = [1,2]
        
        if k == 0 {
            return dp[0]
        } else if k == 1 {
            return dp[1]
        }
        for i in 2...k {
            dp.append(dp[i-1] + dp[i-2])
        }
        return dp.last!
    }
}
