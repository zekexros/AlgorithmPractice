import Foundation

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var result = 0
        
        for i in 0..<prices.count {
            if i + 1 < prices.count {
                let calculate = prices[i+1] - prices[i]
                if calculate > 0 {
                    result += calculate
                }
            }
        }
        
        return result
    }
}
