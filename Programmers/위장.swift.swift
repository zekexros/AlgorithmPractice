import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var dict = [String: [String]]()
    for i in clothes {
        let name = i[0]
        let type = i[1]
        dict[type] = dict[type] == nil ? [name] : dict[type]! + [name]
    }
    
    return dict.values.map { Array($0) }.reduce(1) { $0 * ($1.count + 1) } - 1
}
