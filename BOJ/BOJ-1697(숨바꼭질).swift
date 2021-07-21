import Foundation

var input = readLine()!.components(separatedBy: " ").map{Int($0)!}

var willVisitQueue = [input[0]]
var visitedCheck = Array(repeating: false, count: 100001)
var depth = -1
var detection = true

while detection {
    for _ in 0..<willVisitQueue.count {
        let node = willVisitQueue.removeFirst()
        visitedCheck[node] = true
        if node == input[1] {
            detection = false
            break
        }
        if node*2 <= 100000, !visitedCheck[node*2] {
            willVisitQueue.append(node*2)
            visitedCheck[node*2] = true
        }
        
        if node-1 >= 0 && node-1 <= 100000, !visitedCheck[node-1] {
            willVisitQueue.append(node-1)
            visitedCheck[node-1] = true
        }
        if node+1 <= 100000, !visitedCheck[node+1] {
            willVisitQueue.append(node+1)
            visitedCheck[node+1] = true
        }
    }
    depth += 1
}
print(depth)
