import Foundation

func solution(_ s:String) -> [Int] {
  var dict: [Character: Int] = [:]
  var result: [Int] = []
  for (index, element) in s.enumerated() {
    if dict[element] == nil {
      dict[element] = index
      result.append(-1)
    } else {
      let distance = index - dict[element]!
      dict[element] = index
      result.append(distance)
    }
  }
  
    return result
}
