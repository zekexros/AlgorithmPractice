import Foundation

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var dpArray = Array(repeating: 0, count: nums.count)
        dp(n: nums.count-1, &dpArray, nums)
        return dpArray.max()!
        
    }
    
    func dp(n: Int, _ dpArray: inout [Int], _ nums: [Int]) -> Int {
        if n == 0 {
            dpArray[0] = nums[0]
            return dpArray[0]
        }
        
        dpArray[n] = max(dp(n: n-1, &dpArray, nums) + nums[n], nums[n])
        
        return dpArray[n]
    }
}
