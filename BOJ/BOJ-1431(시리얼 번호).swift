import Foundation

var input = Int(readLine()!)!
var basket = [String]()
for _ in 0..<input {
    let temp = readLine()!
    basket.append(temp)
}

basket.sort { lhs, rhs in
    if lhs.count == rhs.count {
        let a = lhs.filter { Int(String($0)) != nil }.reduce(0) { result, char in
            return result + Int(String(char))!
        }
        let b = rhs.filter { Int(String($0)) != nil }.reduce(0) { result, char in
            return result + Int(String(char))!
        }

        if a == b {
            return lhs < rhs
        } else {
            return a < b
        }
    } else {
        return lhs.count < rhs.count
    }
}

basket.forEach{ print($0) }
