import Foundation

class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var pointer1 = 0
        var pointer2 = numbers.count - 1
        
        while pointer1 <= pointer2 {
            if numbers[pointer1] + numbers[pointer2] > target {
                pointer2 -= 1
            } else if numbers[pointer1] + numbers[pointer2] < target {
                pointer1 += 1
            } else {
                break
            }
        }
        
        return [pointer1+1, pointer2+1]
    }
}
