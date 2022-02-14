import Foundation

var num = Int(readLine()!)!
var people = readLine()!.split(separator: " ").map { Int($0)! }
func tournament(people: [Int], sum: Int) {
    if people.count == 1 {
        print(0)
        return
    }
    
    if people.count == 2 {
        let gap = abs(people[0] - people[1])
        print(sum + gap)
        return
    }
    
    var people = people
    let min = people.max()!
    let index = people.firstIndex(of: min)
    if index == 0 {
        let one = people[index!]
        let another = people[index!+1]
        let gap = abs(one-another)
        let sum = sum + gap
        people.remove(at: index!)
        tournament(people: people, sum: sum)
    } else if index == people.count-1 {
        let one = people[index!]
        let another = people[index!-1]
        let gap = abs(one-another)
        let sum = sum + gap
        people.remove(at: index!)
        tournament(people: people, sum: sum)
    } else {
        let standard = people[index!]
        let front = people[index!-1]
        let back = people[index!+1]
        let frontGap = abs(standard-front)
        let backGap = abs(standard - back)
        if frontGap > backGap {
            people.remove(at: index!)
            let sum = sum + backGap
            tournament(people: people, sum: sum)
        } else {
            people.remove(at: index!)
            let sum = sum + frontGap
            tournament(people: people, sum: sum)
        }
    }
}

tournament(people: people, sum: 0)

