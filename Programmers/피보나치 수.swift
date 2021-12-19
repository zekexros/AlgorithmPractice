import Foundation

func solution(_ n:Int) -> Int {
    var dp = [0, 1]
    
    if n <= 1 {
        return dp[n]
    }
    
    for i in 2...n {
        let result = (dp[i-2] + dp[i-1]) % 1234567
        dp.append(result)
    }
    
    return dp.last!
}
