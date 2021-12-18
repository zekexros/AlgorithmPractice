import Foundation

func solution(_ s:String) -> [Int] {
    var s = s
    var numOfConvert = 0
    var numOfRemoved = 0
    var count = 0
    while s != "1" {
        let length = s.filter{ char in
            if char == "0" {
                numOfRemoved += 1
            }
            return char != "0"
        }.count
        s = String(length, radix: 2)
        numOfConvert += 1
        count += 1
    }
    return [numOfConvert, numOfRemoved]
}
