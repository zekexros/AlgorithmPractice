import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var array1 = [Int]()
    var answer = [Int]()
    for i in 0..<commands.count {
            for x in commands[i][0]-1...commands[i][1]-1 {
                array1.append(array[x])
            }
        print(array1)
        array1.sort()
        answer.append(array1[commands[i][2]-1])
        array1.removeAll()
    }
    return answer
}
