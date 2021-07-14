import Foundation

var count = Int(readLine()!)!
var array = readLine()!.components(separatedBy: " ").map { Int($0)! }
var dp = [array[0]]

for i in 1..<count {
    dp.append(max(dp[i-1] + array[i], array[i]))
}

print(array.count == 1 ? array[0] : dp.max()!)
