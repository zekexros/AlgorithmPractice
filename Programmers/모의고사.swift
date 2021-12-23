import Foundation

func solution(_ answers:[Int]) -> [Int] {
    var correctsCount1 = 0
    var correctsCount2 = 0
    var correctsCount3 = 0
    
    mathSolution(answer: answers, way: [1,2,3,4,5], startIndex: 0, correctNum: &correctsCount1)
    mathSolution(answer: answers, way: [2,1,2,3,2,4,2,5], startIndex: 0, correctNum: &correctsCount2)
    mathSolution(answer: answers, way: [3,3,1,1,2,2,4,4,5,5], startIndex: 0, correctNum: &correctsCount3)
    
    let highScore = max(correctsCount1, correctsCount2, correctsCount3)
    
    return [(1,correctsCount1), (2,correctsCount2), (3,correctsCount3)].filter{ $0.1 == highScore }.sorted { $0.0 < $1.0}.map { $0.0 }
}

func mathSolution(answer: [Int], way: [Int], startIndex: Int, correctNum: inout Int) {
    var answer = answer
    var index = startIndex
    if answer == [] {
        return
    }
    
    
    correctNum = answer[0] == way[index] ? correctNum + 1 : correctNum
    
    answer.removeFirst()
    if index+1 == way.count {
        index = -1
    }
    mathSolution(answer: answer, way: way, startIndex: index+1, correctNum: &correctNum)
}
