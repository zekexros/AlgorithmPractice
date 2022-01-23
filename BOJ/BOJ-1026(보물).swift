import Foundation

var n = Int(readLine()!)!
var a = readLine()!.split(separator: " ").map { Int($0)! }
var b = readLine()!.split(separator: " ").map { Int($0)! }
var result = 0

a.sort(by: >)
b.sort(by: <)

for i in 0..<n {
    result += a[i] * b[i]
}

print(result)
