import Foundation

func solution(_ n:Int, _ computers:[[Int]]) -> Int {

    let nodeArray = Array(0..<n)
    var needToVisit = [Int]()
    var visitedQueue = [Int]()
    var visitedQueueArray = [[Int]]()

    for i in nodeArray {
        needToVisit.append(i)
        
        while !needToVisit.isEmpty {
            let node = needToVisit.removeFirst()
            if visitedQueue.contains(node) {
                continue
            }
            visitedQueue.append(node)
            for i in 0..<n {
                if node == i { continue }
                if computers[node][i] == 1 {
                    needToVisit.append(i)
                }
            }
        }
        visitedQueue.sort()
        visitedQueueArray.append(visitedQueue)
        needToVisit.removeAll()
        visitedQueue.removeAll()
    }
    return Set(visitedQueueArray).count
}
