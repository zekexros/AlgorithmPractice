let n = Int(readLine()!)!
let m = Int(n/2)
var score = [[Int]]()
var totalTeam = Set(Array(0..<n))
for _ in 0..<n {
let line = readLine()!.split(separator: " ").map { Int(String($0))! }
score.append(line)
}
var answer = 987654321
func cal(startTeam: [Int], linkTeam: [Int]) {
var startTeamSum = 0
var linkTeamSum = 0
for i in 0..<m {
for j in i+1..<m {
startTeamSum += score[startTeam[i]][startTeam[j]] + score[startTeam[j]][startTeam[i]]
linkTeamSum += score[linkTeam[i]][linkTeam[j]] + score[linkTeam[j]][linkTeam[i]]
}
}
answer = min(answer, abs(startTeamSum - linkTeamSum))
}
func combination(of total: [Int], selectedCount: Int, current idx: Int, seletcted: [Int]) {
if selectedCount == 0 {
cal(startTeam: seletcted, linkTeam: Array(totalTeam.subtracting(Set(seletcted))))
} else if idx == total.count {
return
} else {
let new = seletcted + [total[idx]]
combination(of: total, selectedCount: selectedCount-1, current: idx+1, seletcted: new)
combination(of: total, selectedCount: selectedCount, current: idx+1, seletcted: seletcted)
}
}
combination(of: Array(0..<n), selectedCount: m, current: 0, seletcted: [])
print(answer)
