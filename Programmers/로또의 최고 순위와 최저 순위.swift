import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    let numOfWinsMin = lottos.filter { win_nums.contains($0) }.count
    let numOfWinsMax = numOfWinsMin + lottos.filter { $0 == 0 }.count
    let minGrade = 7 - numOfWinsMin == 7 ? 6 : 7 - numOfWinsMin
    let maxGrade = 7 - numOfWinsMax == 7 ? 6 : 7 - numOfWinsMax
    
    return [maxGrade, minGrade]
}

print(solution([0, 0, 0, 0, 0, 0], [31, 10, 45, 1, 6, 19]))
