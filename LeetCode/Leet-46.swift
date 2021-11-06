import Foundation

class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        var result = [[Int]]()
        dfs(nums: nums, result: &result, permutation: [], count: nums.count)
        return result
    }
    
    func dfs(nums: [Int], result: inout [[Int]], permutation: [Int], count: Int) {
        if count == permutation.count {
            result.append(permutation)
            return
        }
        
        for i in 0..<nums.count {
            var nums = nums
            let value = nums[i]
            nums.remove(at: i)
            dfs(nums: nums, result: &result, permutation: permutation + [value], count: count)
        }
    }
}
