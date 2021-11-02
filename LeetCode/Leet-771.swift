import Foundation

class Solution {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        var dict = [String: Bool]()
        jewels.forEach { dict[String($0)] = true }
        return stones.filter { dict[String($0)] == true }.count
    }
}
