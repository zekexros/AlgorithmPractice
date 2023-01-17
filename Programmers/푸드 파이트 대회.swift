import Foundation

func solution(_ food:[Int]) -> String {
  var stack = [Int]()
  var table = [Int]()
  
  for (index, count) in food.enumerated() {
    if index == 0 || count == 1 {
      continue
    }
    
    for _ in 0..<(count / 2) {
      table.append(index)
      stack.append(index)
    }
  }
  table.append(0)
  let reversedStack = stack.reversed()
  let combinedTable = table + reversedStack
  
  return combinedTable.map { String($0) }.joined()
}
