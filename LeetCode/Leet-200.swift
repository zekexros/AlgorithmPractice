import Foundation

class Solution {
    let dx = [1, -1, 0, 0]
    let dy = [0, 0, -1, 1]
    
    func numIslands(_ grid: [[Character]]) -> Int {
        var numOfIslands = 0
        var grid = grid
        
        for row in 0..<grid.count {
            for column in 0..<grid[0].count {
                if grid[row][column] == "1" {
                    dfs(grid: &grid, row: row, column: column)
                    numOfIslands += 1
                }
            }
        }
        
        return numOfIslands
    }
    
    func dfs(grid: inout [[Character]], row: Int, column: Int) {
        if grid[row][column] == "0" {
            return
        } else {
            grid[row][column] = "0"
            
            for i in 0...3 {
                if row + dy[i] >= 0, row + dy[i] < grid.count, column + dx[i] >= 0, column + dx[i] < grid[0].count {
                    dfs(grid: &grid, row: row + dy[i], column: column + dx[i])
                } else {
                    continue
                }
            }
        }
    }
}
