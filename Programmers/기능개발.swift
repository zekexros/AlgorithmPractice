import Foundation

// progress 스택을 생성한다. push, pop LIFO
// 7일 배포, 3일 배포, 9일 배포
// 가장 처음에 들어온 작업의 배포일수 기록.
// 작은게 들어오면 push, 큰게 들어오면 갖고있던 작업들 모두 pop한 후 push
struct Stack {
    var array = [Int]()
    var isEmpty: Bool {
        array.isEmpty
    }
    var count: Int {
        array.count
    }
    
    func peek() -> Int? {
        array.last
    }
    
    mutating func push(element: Int) {
        array.append(element)
    }
    
    mutating func pop() {
        array.removeLast()
    }
    
    mutating func removeAll() {
        array.removeAll()
    }
    
    func max() -> Int? {
        array.max()
    }
}

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var stack = Stack()
    var result = [Int]()
    for i in 0..<progresses.count {
        let day = (100 - progresses[i]) % speeds[i] > 0 ? (100 - progresses[i]) / speeds[i] + 1 : (100 - progresses[i]) / speeds[i]
        if !stack.isEmpty {
            if stack.max()! >= day {
                stack.push(element: day)
            } else {
                result.append(stack.count)
                stack.removeAll()
                stack.push(element: day)
            }
        } else {
            stack.push(element: day)
        }
        print(stack.array)
    }
    
    return result + [stack.count]
}

print(solution([95, 90, 99, 99, 80, 99], [1, 1, 1, 1 ,1, 1]))
