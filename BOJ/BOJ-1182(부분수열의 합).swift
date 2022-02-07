import Foundation

var input = readLine()!.split(separator: " ").map { Int($0)! }
var sequence = readLine()!.split(separator: " ").map { Int($0)! }
var count = 0

func combination(_ nums: [Int], _ targetNum: Int) -> [[Int]] {
    var result = [[Int]]()
    var visited = Array(repeating: false, count: nums.count)
    
    func combination(_ index: Int, _ nowCombi: [Int]) {
        if nowCombi.count == targetNum {
            result.append(nowCombi)
            return
        }
        
        for i in index..<nums.count {
            if visited[i] == true {
                continue
            }
            else {
                visited[i] = true
                combination(i+1, nowCombi + [nums[i]])
                visited[i] = false
            }
        }
    }
    
    combination(0, [])
    
    return result
}

for i in 1...sequence.count {
    var results = combination(sequence, i)
    results.forEach { result in
        if result.reduce(0, +) == input[1] {
            count += 1
        }
    }
}

print(count)
