import Foundation

func solution(_ n:Int) -> Int {
  return sieveOfEratosthenes(num: n)
}

func sieveOfEratosthenes(num: Int) -> Int {
    var arr = Array(repeating: true, count: num+1)
    var primes = 0
    for i in 2..<num {
        if arr[i] {
            for j in stride(from: i, through: num, by: i) {
                    arr[j] = false
            }
            primes += 1
        }
    }
    return primes
}
