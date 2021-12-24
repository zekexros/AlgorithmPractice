import Foundation

typealias Destination = (arrivalNode: Int, distance: Int)
typealias WeightedNode = (node: Int, weightedDistance: Int)

func solution(_ N:Int, _ road:[[Int]], _ k:Int) -> Int {
    var townGraph = [Int: [Destination]]() // [시작노드: (도착노드, 거리)]
    var distanceGraph = [Int: Int]() // [노드: 가중치]
    var queue = [WeightedNode(1, 0)]
    
    for i in 1...N {
        if i == 1 {
        distanceGraph[i] = 0
        } else {
        distanceGraph[i] = Int.max
        }
    }
    
    for i in road {
        townGraph[i[0]] = townGraph[i[0]] == nil ? [Destination(i[1], i[2])] : townGraph[i[0]]! + [Destination(i[1], i[2])]
        townGraph[i[1]] = townGraph[i[1]] == nil ? [Destination(i[0], i[2])] : townGraph[i[1]]! + [Destination(i[0], i[2])]
    }
    
    while !queue.isEmpty {
        queue.sort { $0.weightedDistance < $1.weightedDistance }
        
        let weightedNode = queue.removeFirst()
        
        for (arrivalNode, arrivalDistance) in townGraph[weightedNode.node]! {
            if weightedNode.weightedDistance + arrivalDistance < distanceGraph[arrivalNode]! {
                distanceGraph[arrivalNode]! = weightedNode.weightedDistance + arrivalDistance
                queue.append(WeightedNode(arrivalNode, distanceGraph[arrivalNode]!))
            }
        }
    }
    
    return distanceGraph.filter { $0.value <= k }.keys.count
}
