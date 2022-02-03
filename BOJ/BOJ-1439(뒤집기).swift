import Foundation

var dx = [-1, 0, 1, -1, 0, 1, -1, 0, 1]
var dy = [1, 1, 1, 0, 0, 0, -1, -1, -1]

func dfs(visited: inout [[Bool]], map: inout [[Int]], col: Int, row: Int) {
    if visited[col][row] == true {
        return
    }
    
    visited[col][row] = true
    
    for k in 0...8 {
        var row = (row + dx[k]), col = (col + dy[k])
        if (0..<map[0].count) ~= row, (0..<map.count) ~= col, map[col][row] == 1 {
            dfs(visited: &visited, map: &map, col: col, row: row)
        }
    }
    
}

while true {
    var input = readLine()!.split(separator: " ").map { Int($0)! }
    if input == [0, 0] {
        break
    }
    var worldMap = [[Int]]()
    var count = 0
    for i in 0..<input[1] {
        var column = readLine()!.split(separator: " ").map { Int($0)! }
        worldMap.append(column)
    }
    var visited = worldMap.map { column in
        column.map { _ in false }
    }
    
    for i in 0..<worldMap.count {
        for j in 0..<worldMap[0].count {
            if visited[i][j] == false, worldMap[i][j] == 1 {
                dfs(visited: &visited, map: &worldMap, col: i, row: j)
                count += 1
            }
        }
    }
    
    print(count, separator: "", terminator: "\n")
}
