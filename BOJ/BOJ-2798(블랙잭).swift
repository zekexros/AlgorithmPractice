import Foundation

var input = readLine()!.split(separator: " ").map { Int($0)! }
var cards = readLine()!.split(separator: " ").map { Int($0)! }
var totals = [Int]()

func combination(total: [Int], shouldSelect: Int, current index: Int, selected: [Int]) {
    if shouldSelect == 0 {
        var num = selected.reduce(0, +)
        if num <= input[1] {
            totals.append(num)
        }
        return
    } else if index == total.count {
        return
    } else {
        var newSelected = selected
        newSelected.append(total[index])
        combination(total: total, shouldSelect: shouldSelect-1, current: index+1, selected: newSelected)
        combination(total: total, shouldSelect: shouldSelect, current: index+1, selected: selected)
    }
}

combination(total: cards, shouldSelect: 3, current: 0, selected: [])

print(totals.max()!)
