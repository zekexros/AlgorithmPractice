import Foundation

var n = Int(readLine()!)!
var dict1 = [String: Int]() //알파벳, 겹치는 개수
var reverse = 9
var store = [[String]]()
var result = 0
for _ in 0..<n {
    let element = readLine()!.map { String($0) }
    store.append(element)
    for (index, alphabet) in element.enumerated() {
        var standard = "1"
        for _ in 0..<(element.count - index)-1 {
            standard += "0"
        }
        dict1[alphabet] = dict1[alphabet] == nil ? Int(standard)! : dict1[alphabet]! + Int(standard)!
    }
}

var a = dict1.sorted { lhs, rhs in
    lhs.value > rhs.value
}

for i in a {
    dict1[i.key] = reverse
    reverse -= 1
}

for i in store {
    result += Int(i.map { String(dict1[$0]!) }.joined())!
}

print(result)

