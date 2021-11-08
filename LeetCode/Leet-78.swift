import Foundation

class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var result: [[Int]] = []
        dfs(nums: nums, result: &result, comb: [])
        return result
    }
    
    func dfs(nums: [Int], result: inout [[Int]], comb: [Int], k: Int = 0) {
        var comb = comb
        
        result.append(comb)
        
        if k <= nums.count {
            for i in k..<nums.count {
                comb.append(nums[i])
                dfs(nums: nums, result: &result, comb: comb, k: i+1)
                comb.removeLast()
            }
        }
    }
}
