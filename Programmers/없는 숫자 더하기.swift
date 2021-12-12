import Foundation

func solution(_ numbers:[Int]) -> Int {
    let total = Array(0...9).reduce(0, +)
    let totalNumbers = numbers.reduce(0, +)
    return total - totalNumbers
}
