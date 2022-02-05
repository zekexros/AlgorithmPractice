import Foundation

var input = Int(readLine()!)!
var temp = [Int]()
for _ in 0..<input {
    var num = Int(readLine()!)!
    temp.append(num)
}
temp.sort(by: <)
temp.forEach{ print($0) }
