import Foundation

func selfNumber() {
    var array = Array(repeating: false, count: 10000)
    
    for i in 1...10000 {
        var selfNum = String(i).map { String($0) }.reduce(0) { result, num in
            return result + Int(num)!
        }
        selfNum += i
        
        if selfNum-1 <= 9999 {
            array[selfNum-1] = true
        }
    }
    
    for (index, isSelfNumber) in array.enumerated() {
        if !isSelfNumber {
            print(index+1)
        }
    }
}

selfNumber()
