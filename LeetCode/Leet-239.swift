import Foundation

class Solution {
    func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
        var windowFront = 0
        var windowBack = windowFront + k - 1
        var maxValues = [Int]()
        
        while windowBack < nums.count {
            maxValues.append(nums[windowFront...windowBack].max()!)
            windowFront += 1
            windowBack += 1
        }
        
        return maxValues
    }
}
