import Foundation

class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var filteredCombination: [[Int]] = []
        var dict = [Int: (Int,Bool)]()
        
        nums.enumerated().forEach { (index, num) in
            dict[num] = (index, true)
        }

        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                let another = -(nums[i] + nums[j])
                if dict[another] != nil, i != dict[another]?.0, j != dict[another]?.0 {
                    filteredCombination.append([nums[i], nums[j], another])
                }
            }
        }
        
        return Array(Set(filteredCombination.map { $0.sorted() }))
    }
}
