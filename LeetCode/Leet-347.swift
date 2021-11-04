import Foundation

class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var dict = [Int: Int]()
        nums.forEach { num in
            dict[num] = dict[num] == nil ? 1 : dict[num]! + 1
        }
        return dict.sorted { $0.value > $1.value }.map { $0.key }[0..<k].map { Int($0) }
    }
}
