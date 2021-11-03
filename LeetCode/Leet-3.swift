import Foundation

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var dict = [String: Int]()
        var start = 0
        var maxLength = 0
        
        for (index, element) in s.enumerated() {
            if let value = dict[String(element)], value >= start {
                start = value + 1
            } else {
                maxLength = max(maxLength, index - start + 1)
            }
            
            dict[String(element)] = index
        }
        
        return maxLength
    }
}
