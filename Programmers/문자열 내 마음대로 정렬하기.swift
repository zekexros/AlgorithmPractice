import Foundation

func solution(_ strings:[String], _ n:Int) -> [String] {
  return strings.sorted(by: { (lhs, rhs) -> Bool in
    var lhsIndex = lhs.index(lhs.startIndex, offsetBy: n)
    var rhsIndex = rhs.index(rhs.startIndex, offsetBy: n)
    if lhs[lhsIndex] == rhs[rhsIndex] {
      return lhs < rhs
    } else {
      return lhs[lhsIndex] < rhs[rhsIndex]
    }
  })
}
