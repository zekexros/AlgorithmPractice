import Foundation

var input = Int(readLine()!)!
var results = 0

func isGame(n: [Int]) -> Bool {
    let gap = n[0] - n[1]
    for i in 0..<n.count {
        if i == n.count - 1 {
            break
        }
        if gap != n[i] - n[i+1] {
            return false
        }
    }
    
    return true
}

for i in 1...input {
    if (1...99) ~= i {
        results += 1
    } else {
        let temp = String(i).map { Int(String($0))! }
        if isGame(n: temp) {
            results += 1
        }
    }
}

print(results)
