import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
  return score.sorted(by: >).chunked(into: m).filter { $0.count == m }.map { $0.min()! * m }.reduce(0, +)
}

extension Array {
  func chunked(into size: Int) -> [[Element]] {
    return stride(from: 0, to: count, by: size).map {
      Array(self[$0 ..< Swift.min($0 + size, count)])
    }
  }
}
