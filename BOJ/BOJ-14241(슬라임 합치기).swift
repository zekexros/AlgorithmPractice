import Foundation

var count = Int(readLine()!)!
var slimes = readLine()!.split(separator: " ").map { Int($0)! }
slimes.sort(by: <)

func calculate(slimes: [Int], score: Int = 0) {
    if slimes.count == 1 {
        print(score)
        return
    }
    var slimes = slimes
    let a = slimes.removeFirst()
    let b = slimes.removeFirst()
    slimes.append(a+b)
    slimes.sort(by: <)
    calculate(slimes: slimes, score: score+(a*b))
}

calculate(slimes: slimes, score: 0)
