import Foundation

func solution(_ n:Int, _ m:Int) -> [Int] {
  return [gcd(n, m), lcm(n, m)]
}

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcd(b, a%b)
    }
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}
