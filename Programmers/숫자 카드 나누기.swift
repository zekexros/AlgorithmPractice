import Foundation

func solution(_ arrayA:[Int], _ arrayB:[Int]) -> Int {
  let aWithb = isAccordedCondition(arrayA, arrayB)
  let bWitha = isAccordedCondition(arrayB, arrayA)
  if !aWithb.0, !bWitha.0 {
    return 0
  } else if aWithb.0, !bWitha.0 {
    return aWithb.1!
  } else if !aWithb.0, bWitha.0 {
    return bWitha.1!
  } else {
    return max(aWithb.1!, bWitha.1!)
  }
}

func isAccordedCondition(_ arrayA: [Int], _ arrayB: [Int]) -> (Bool, Int?) {
  let gcdA = arrayA.reduce(arrayA[0], { gcd($0, $1) })
  if gcdA == 1 {
    return (false, nil)
  }
  if arrayB.filter({ $0 % gcdA == 0 }).isEmpty {
    return (true, gcdA)
  } else {
    return (false, nil)
  }
}

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcd(b, a%b)
    }
}
