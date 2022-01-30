import Foundation

var input = readLine()!.split(separator: " ").map { Int($0)! }
var N = input[0]
var M = input[1]

func permutation(n: Int, array: [Int], next: [Int] = [], answer: inout [[Int]]) {
    var array = array
    if next != next.sorted(by: <) {
        return
    }
    
    if next.count == n {
        answer.append(next)
    }
    
    for (index,i) in array.enumerated() {
        let removed = array.remove(at: index)
        let next = next + [i]
        permutation(n: n, array: array, next: next, answer: &answer)
        array.insert(removed, at: index)
    }
}

var answer = [[Int]]()
permutation(n: M, array: Array(1...N), answer: &answer)
for i in answer {
    print(i.map { String($0) }.joined(separator: " "))
}

