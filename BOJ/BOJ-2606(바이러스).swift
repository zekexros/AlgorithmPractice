import Foundation

var numOfCom = Int(readLine()!)!
var numOfConnected = Int(readLine()!)!
var connectedDict = [Int: [Int]]()
var needToVisitQueue = [Int]()
var visitedQueue = [Int]()

for _ in 0..<numOfConnected {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    if connectedDict[input[0]] == nil {
        connectedDict[input[0]] = [input[1]]
    } else if !connectedDict[input[0]]!.contains(input[1]) {
        connectedDict[input[0]]!.append(input[1])
    }
    if connectedDict[input[1]] == nil {
        connectedDict[input[1]] = [input[0]]
    } else if !connectedDict[input[1]]!.contains(input[0]) {
        connectedDict[input[1]]!.append(input[0])
    }
    
    if input[0] == 1 {
        needToVisitQueue.append(input[1])
    }
}

while !needToVisitQueue.isEmpty {
    let node = needToVisitQueue.removeFirst()
    
    if visitedQueue.contains(node) {
        continue
    }
    
    visitedQueue.append(node)

    guard let nodes = connectedDict[node] else { continue }
    nodes.forEach{ needToVisitQueue.append($0) }
}

print((Set(visitedQueue.filter{ $0 != 1 }).count))
