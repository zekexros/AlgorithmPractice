import Foundation

var count = Int(readLine()!)!

for _ in 0..<count {
    var input = readLine()!.map { String($0) }
    var stack = 0
    for i in input {
        if i == "(" {
            stack += 1
        } else {
            stack -= 1
        }
        if stack < 0 {
            print("NO")
            break
        }
    }
    
    if stack == 0 {
        print("YES")
    } else if stack > 0 {
        print("NO")
    } else {
        continue
    }
}
