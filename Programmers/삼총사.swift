import Foundation

func solution(_ number:[Int]) -> Int {
  var combination = [[Int]]()
  getCombination(number, 3, &combination)
  return combination.filter { $0.reduce(0, +) == 0 }.count
}

func getCombination<T>(_ arr: [T], _ r: Int, _ res: inout [[T]], _ now: [T] = [T]()) {
    let n = arr.count

    guard n > 0 else { return }

    if r == 0 {
        res.append(now)
    } else if n == r {
        res.append(now + arr)
    } else {
        getCombination(Array(arr[1...]), r - 1, &res, now + [arr.first!])
        getCombination(Array(arr[1...]), r, &res, now)
    }
}
