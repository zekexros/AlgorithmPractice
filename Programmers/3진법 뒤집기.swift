import Foundation

func solution(_ n:Int) -> Int {
    let ternary = String(n, radix: 3)
    let reversed = String(ternary.reversed())
    let decimal = Int(reversed, radix: 3)!
    return decimal
}
