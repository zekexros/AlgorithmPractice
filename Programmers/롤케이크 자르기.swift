import Foundation

func solution(_ topping:[Int]) -> Int {
    var topping = topping
    var topping1Dict: [Int: Int] = [:]
    var topping2Dict: [Int: Int] = [:]
    var fairlyCount: Int = 0
    
    topping.forEach { topping1Dict[$0] = topping1Dict[$0] == nil ? 1 : topping1Dict[$0]! + 1 }
    
    while !topping.isEmpty {
        let element = topping.removeLast()
        if topping1Dict[element]! > 1 {
            topping1Dict[element]! -= 1
        } else if topping1Dict[element]! == 1 {
            topping1Dict[element] = nil
        }
        topping2Dict[element] = topping2Dict[element] == nil ? 1 : topping2Dict[element]! + 1
        if topping1Dict.keys.count == topping2Dict.keys.count {
            fairlyCount += 1
        }
    }
    return fairlyCount
}
