import Foundation

class Solution {
    func networkDelayTime(_ times: [[Int]], _ n: Int, _ k: Int) -> Int {
        var graph = [Int: [(Int, Int)]]()  //[노드: [노드: 거리]]
        for time in times {
            if graph[time[0]] == nil {
                graph[time[0]] =  [(time[1], time[2])]
            } else {
                graph[time[0]]!.append((time[1], time[2]))
            }
            
        }
        
        var distances = [Int: Int]()
        var queue = [(Int, Int)]() //(노드, 거리)
        for i in 1...n {
            distances[i] = Int.max
        }

        distances[k] = 0
        queue.append((k,0))

        while !queue.isEmpty {
            queue.sort { lhs, rhs in
                lhs.1 > rhs.1
            }
            
            let extraction = queue.removeLast()
            
            if graph[extraction.0] != nil {
                for (node, distance) in graph[extraction.0]! {
                    if distance + distances[extraction.0]! < distances[node]! {
                        distances[node] = distance + distances[extraction.0]!
                        queue.append((node, distance))
                        
                    }
                }
            }
        }
        
        if !distances.values.filter({ $0 == Int.max }).isEmpty {
            return -1
        } else {
            return distances.values.max()!
        }
    }
}
