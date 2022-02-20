import Foundation

var count = readLine()!.split(separator: " ").map { Int($0)! }
var codes = readLine()!.split(separator: " ").map { String($0) }.sorted(by: <)
var b = Set(["a", "e", "i", "o", "u"])

func combination(total: [String], shouldSelect: Int, current index: Int, selected: [String]) {
    if shouldSelect == 0 {
        var a = Set(selected)
        if a.intersection(b).isEmpty || a.subtracting(b).count < 2 {
            return
        } else {
            print(selected.joined())
            
        }
    } else if index == total.count {
        return
    } else {
        var newSelected = selected
        newSelected.append(total[index])
        combination(total: total, shouldSelect: shouldSelect-1, current: index+1, selected: newSelected)
        combination(total: total, shouldSelect: shouldSelect, current: index+1, selected: selected)
    }
}

combination(total: codes, shouldSelect: count[0], current: 0, selected: [])

