import Foundation

class Solution {
  func arrayPairSum(_ nums: [Int]) -> Int {
    return nums.sorted(by: <).chunked(into: 2).map { $0[0] }.reduce(0, +)
  }
}

extension Array {
  func chunked(into size: Int) -> [[Element]] {
    return stride(from: 0, to: count, by: size).map {
      Array(self[$0 ..< Swift.min($0 + size, count)])
    }
  }
}
