import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
  return recursion(a, b, n, cokeNum: 0)
}

func recursion(_ a:Int, _ b:Int, _ n:Int, cokeNum: Int) -> Int {
  var n = n
  if n < a {
    return cokeNum
  }
  var emptyBottleCount = (n / a) * a
  var newBottleCount = (n / a) * b
  n = n - emptyBottleCount + newBottleCount
  return recursion(a, b, n, cokeNum: cokeNum+newBottleCount)
}
