import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    var answer = 0
    
    func calculate(depth: Int, target: Int, numbers: [Int], value: Int) {
        //탈출조건
        if depth == numbers.count {
            if value == target {
                answer += 1
            }
            return
        }
        
        calculate(depth: depth+1, target: target, numbers: numbers, value: value+numbers[depth])
        calculate(depth: depth+1, target: target, numbers: numbers, value: value-numbers[depth])
    }
    
    calculate(depth: 1, target: target, numbers: numbers, value: numbers[0])
    calculate(depth: 1, target: target, numbers: numbers, value: -numbers[0])
    
    return answer
}

print(solution([1,1,1,1,1], 3))
