import Foundation

var input = readLine()!.split(separator: " ").map { Int($0)! }

var willVisitQueue = [input[0]]
var level = 1
while !willVisitQueue.isEmpty {
    var willAdded = [Int]()
    var end = false
    for i in 0..<willVisitQueue.count {
        var add = Int(String(willVisitQueue[i]) + "1")!
        var multiple = willVisitQueue[i]*2
        if add == input[1] || multiple == input[1] {
            level += 1
            willVisitQueue.removeAll()
            end = true
            print(level)
            break
        }
        
        if multiple <= 1000000000 {
            willAdded.append(multiple)
        }
        
        if add <= 1000000000 {
            willAdded.append(add)
        }
        
    }
    
    if end {
        break
    }
    
    if willAdded.filter { $0 > input[1] }.count == willAdded.count {
        print(-1)
        break
    } else {
        willVisitQueue.removeAll()
        willVisitQueue.append(contentsOf: willAdded)
    }
    level += 1
}

