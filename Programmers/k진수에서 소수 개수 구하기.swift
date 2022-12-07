import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    var converted = String(String(n, radix: k)).map { String($0) }
    var specialPrimes: [Int] = []
    var splitted = converted.split(separator: "0", omittingEmptySubsequences: true).map { Int(Array<String>($0).joined())! }.filter { isPrime($0) }
    specialPrimes += splitted
    return specialPrimes.count
}

func isPrime(_ n: Int) -> Bool {
    guard n >= 2     else { return false }
    guard n != 2     else { return true  }
    guard n % 2 != 0 else { return false }
    return !stride(from: 3, through: Int(sqrt(Double(n))), by: 2).contains { n % $0 == 0 }
}
