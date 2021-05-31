import Foundation

class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var highIndex = nums.count-1
        var lowIndex = 0
        
        while lowIndex <= highIndex {
            let midIndex = (lowIndex+highIndex)/2
            if nums[midIndex] == target {
                return midIndex
            } else if nums[midIndex] > target {
                highIndex = midIndex - 1
            } else {
                lowIndex = midIndex + 1
            }
        }
        return -1
    }
}
