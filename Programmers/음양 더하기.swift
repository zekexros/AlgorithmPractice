import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var integers = [Int]()
    for i in 0..<absolutes.count {
        if signs[i] {
            integers.append(absolutes[i])
        } else {
            integers.append(-absolutes[i])
        }
    }
    
    return integers.reduce(0, +)
}
