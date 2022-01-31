import Foundation

var T = Int(readLine()!)!
var results = [Int]()
for _ in 0..<T {
    _ = readLine()!.split(separator: " ").map { String($0) }
    let A = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted(by: >)
    let B = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted(by: >)
    var result = 0
    for i in A {
        for (index, j) in B.enumerated() {
            if i > j {
                result += B.count-index
                break
            }
        }
    }
    results.append(result)
}
results.forEach{ print($0) }
