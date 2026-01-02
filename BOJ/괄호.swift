import Foundation

var num = Int(readLine()!)!

func isVPS(_ input: String) -> String {
  var stack: [String] = []
  
  for i in input {
    let i = String(i)
    guard let last = stack.last else {
      stack.append(i)
      continue
    }
    
    if last == "(", i == ")" {
      _ = stack.popLast()
    } else {
      stack.append(i)
    }
  }
  
  return stack.isEmpty ? "YES" : "NO"
}

for _ in 0..<num {
  let input = readLine()!
  print(isVPS(input))
}
