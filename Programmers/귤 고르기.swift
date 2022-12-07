import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var dict: [Int: Int] = [:]
    var arranged: Set<Int> = []
    
    for i in tangerine {
        dict[i] = dict[i] == nil ? 1 : dict[i]! + 1
    }
    
    var sortedKeys = dict.sorted { $0.value > $1.value }.map { $0.key }
    var index = 0
    
    for _ in 0..<k {
        if dict[sortedKeys[index]] != 0 {
            arranged.insert(sortedKeys[index])
            dict[sortedKeys[index]]! -= 1
        } else {
            index += 1
            if index == sortedKeys.count {
                break
            }
            arranged.insert(sortedKeys[index])
            dict[sortedKeys[index]]! -= 1
        }
    }
    return arranged.count
}
