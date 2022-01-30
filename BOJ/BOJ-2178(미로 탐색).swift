import Foundation

var input = readLine()!.split(separator: " ").map { Int($0)! }
var maze = [[Int]]()
for _ in 0..<input[0] {
    let n = readLine()!.map { Int(String($0))! }
    maze.append(n)
}
var visited = maze.map { n in
    n.map { _ in false }
}
var willVisitQueue = [(0,0,1)] // 행,렬,거리
var dx = [1,-1,0,0]
var dy = [0,0,-1,1]

while !willVisitQueue.isEmpty {
    let element = willVisitQueue.removeFirst()
    if element.0 == input[0]-1 , element.1 == input[1]-1 {
        print(element.2)
        break
    }
    visited[element.0][element.1] = true
    
    for i in 0...3 {
        let column = element.0 + dy[i]
        let row = element.1 + dx[i]
        let distance = element.2 + 1
        if (0..<input[0]) ~= column, (0..<input[1]) ~= row, visited[column][row] == false, maze[column][row] == 1 {
            visited[column][row] = true
            willVisitQueue.append((column, row, distance))
        }
    }
}

