import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
  var weight = 0
  
  for i in 1...number {
    let divisorCount = divisor(i)
    if divisorCount > limit {
      weight += power
    } else {
      weight += divisorCount
    }
  }
  
  return weight
}

func divisor(_ n: Int) -> Int {
  guard n > 0 else { return 0 }
  var point = 0
  
  let sqrtCalculated = Int(sqrt(Double(n)))
  for i in 1...sqrtCalculated {
    if n % i == 0 {
      if i * i == n {
        point += 1
      } else {
        point += 2
      }
    }
  }
  
  return point
}
