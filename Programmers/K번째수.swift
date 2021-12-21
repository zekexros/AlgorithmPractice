import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    return commands.map { command -> Int in
        array[command[0]-1...command[1]-1].sorted(by: <)[command[2]-1]
    }
}
