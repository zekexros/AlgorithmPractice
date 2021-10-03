import Foundation

func solution(_ numbers:[Int]) -> String {
    let sorted = numbers.sorted { lhs, rhs in
        let a = String(lhs) + String(rhs)
        let b = String(rhs) + String(lhs)
        return Int(a)! > Int(b)!
    }.map { String($0) }.joined()
    
    return numbers.filter { $0 != 0 } == [] ? "0" : sorted
}
