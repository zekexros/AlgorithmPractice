import Foundation

func solution(_ nums:[Int]) -> Int {
  var combos = combinations(arr: nums, k: 3)
  var primes = sieveOfEratosthenes(num: 3000)
  var count = 0
  for i in combos {
    if primes.contains(i) {
      count += 1
    }
  }
  return count
}

func combinations(arr: [Int], k: Int) -> [Int] {
  var result: [Int] = []
  func backtrack(_ first: Int, _ curr: [Int], total: Int = 0) {
    if curr.count == k {
      result.append(total)
      return
    }
    for i in first..<arr.count {
      var newCurr = curr
      newCurr.append(arr[i])
      backtrack(i + 1, newCurr, total: total + arr[i])
    }
  }
  backtrack(0, [])
  return result
}

func sieveOfEratosthenes(num: Int) -> [Int] {
  var arr = Array(repeating: true, count: num+1)
  var primes = [Int]()
  for i in 2...num {
    if arr[i] == true {
      for j in stride(from: i, through: num, by: i) {
        arr[j] = false
      }
      primes.append(i)
    }
  }
  return primes
}
