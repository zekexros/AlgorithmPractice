import Foundation

var input = readLine()!.components(separatedBy: " ").map { Int($0)! }
var children = readLine()!.components(separatedBy: " ").map { Int($0)! }
var temp = 0
var childrenHeightDifference = children.enumerated().map { (index, height) -> Int? in
    var result: Int? = nil
    if index > 0 {
        result = height - temp
    } else {
        result = nil
    }
    temp = height
    return result
}.compactMap { $0 }
print(childrenHeightDifference.sorted(by: <)[0..<input[0]-input[1]].reduce(0,+))

