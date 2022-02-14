import Foundation

var num = Int(readLine()!)!
var people = readLine()!.split(separator: " ").map { Int($0)! }
var abilities = [Int]()

people.sort(by: <)

while !people.isEmpty {
    let n = people.removeFirst()
    let m = people.removeLast()
    abilities.append(n+m)
}

print(abilities.min()!)
