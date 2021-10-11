import Foundation

func solution(_ s:String) -> [Int] {
    var dict = [Int : Int]()
    var s = s
    var processed = s.filter { element -> Bool in
        return element != "{" && element != "}"
    }.components(separatedBy: ",")
        .map { Int($0)! }
    
    for i in processed {
        dict[i] = dict[i] == nil ? 1 : dict[i]! + 1
    }
    
    return dict.sorted { lhs, rhs in
        return lhs.value > rhs.value
    }.map { $0.key }
}
