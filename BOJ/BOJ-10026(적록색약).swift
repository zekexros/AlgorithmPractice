import Foundation

var num = Int(readLine()!)!
var peak = [[String]]()
var dx = [1, -1, 0, 0]
var dy = [0, 0, -1, 1]
var count1 = 0
var count2 = 0
for _ in 0..<num {
    var input = readLine()!.map{ String($0) }
    peak.append(input)
}
var visited = peak.map { $0.map { _ in false } }
var visited2 = visited

func dfs(column: Int, row: Int, peak: [[String]]) { //열x, 행y
    if visited[column][row] {
        return
    }
    
    visited[column][row] = true
    
    for i in 0...3 {
        var newRow = row + dx[i]
        var newCol = column + dy[i]
        
        if 0..<peak.count ~= newCol , 0..<peak.count ~= newRow, peak[column][row] == peak[newCol][newRow] {
            dfs(column: newCol, row: newRow, peak: peak)
        }
    }
}
for i in 0..<peak.count {
    for j in 0..<peak.count {
        if visited[i][j] == false {
            dfs(column: i, row: j, peak: peak)
            count1 += 1
        }
    }
}

var changedPeak = peak.map { peak -> [String] in
    return peak.map { color -> String in
        if color == "R" {
            return "G"
        } else {
            return color
        }
    }
}

visited = visited2

for i in 0..<peak.count {
    for j in 0..<peak.count {
        if visited[i][j] == false {
            dfs(column: i, row: j, peak: changedPeak)
            count2 += 1
        }
    }
}

print(count1, count2)
