import Foundation

var input = Int(readLine()!)!
var DP = [[Int]]()

for _ in 0..<input {
    let temp = readLine()!.components(separatedBy: " ").map { Int($0)! }
    DP.append(temp)
}
for i in 1..<input {
    for j in 0...i {
        if j == 0 {
            DP[i][j] += DP[i-1][0]
        } else if i == j {
            DP[i][j] += DP[i-1][j-1]
        } else {
            DP[i][j] += max(DP[i-1][j-1], DP[i-1][j])
        }
    }
}
print(input == 1 ? DP[0][0] : DP.last!.max()!)

