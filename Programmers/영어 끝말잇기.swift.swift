import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var number = 0
    var turn = 0
    var dict = [String: Int]()
    
    for (index, word) in words.enumerated() {
        let order = index + 1

        turn = Int(ceil(Double(order) / Double(n)))
        
        if order % n == 0 {
            number = n
        } else {
            number = order % n
        }
        dict[word] = dict[word] == nil ? 1 : dict[word]! + 1
        
        if index >= 1, words[index].first != words[index-1].last {
            break
        }
        
        if dict[word]! >= 2 {
            break
        }
        
        if index == words.count - 1 {
            number = 0
            turn = 0
        }
    }
    
    return [number, turn]
}
