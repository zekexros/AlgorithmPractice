class Solution {
    func largestNumber(_ nums: [Int]) -> String {
        var a = nums.map { String($0) }.sorted { $0 + $1 > $1 + $0 }
        return a.filter { $0 != "0" }.isEmpty ? "0": a.joined()
    }
}
