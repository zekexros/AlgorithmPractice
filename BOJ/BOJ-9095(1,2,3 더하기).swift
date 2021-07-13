import Foundation

var input = Int(readLine()!)!

func DP(n: Int) -> Int {
    var memo = [0,1,2,4]
    
    if n > 3 {
        for i in 4...n {
            memo.append(memo[i-1] + memo[i-2] + memo[i-3])
        }
    }
    
    return memo[n]
}

for _ in 1...input {
    let integer = Int(readLine()!)!
    print(DP(n: integer))
}
