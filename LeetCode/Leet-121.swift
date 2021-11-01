import Foundation

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var stack = [Int]()
        var profit = 0
        
        for i in prices {
            if stack.isEmpty {
                stack.append(i)
                continue
            }
            
            if i < stack.last! {
                stack.append(i)
            }
            
            if i > stack.last!, i - stack.last! > profit {
                profit = i - stack.last!
            }
        }
        
        return profit
    }
}
