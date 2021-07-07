import Foundation

var expression = readLine()!.components(separatedBy: "-")
var initialValue = 0
var subtraction = 0

expression.enumerated().forEach { expression in
    if expression.offset == 0 {
        initialValue = expression.element.components(separatedBy: "+").map { Int($0)! }.reduce(0,+)
    } else {
        subtraction += expression.element.components(separatedBy: "+").map { Int($0)! }.reduce(0,+)
    }
}

print(initialValue-subtraction)
