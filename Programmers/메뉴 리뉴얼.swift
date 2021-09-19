import Foundation

// 1. orders의 원소들을 오름차순으로 정렬해놓는다.
// 2. 각 원소마다 최소 2개부터 최대 원소의 갯수만틈 조합을 만들어내어 해시테이블(Dict)에 key에는 조합을, value에는 갯수를 저장한다.
// 3. course의 원소들을 돌며 Dict에 담긴 원소의 갯수와 비교하고 최댓값을 구한 후 최댓값에 해당되는 조합들을 새 배열에 담아준다.
// 4. 새 배열에 담긴 조합들을 오름차순으로 정렬한다.

func solution(_ orders:[String], _ course:[Int]) -> [String] {

    let orders = orders
    let sortedOrders = orders.map { String($0.sorted()) }
    var comStorage = [[String]]()
    var courseTable = [[String] : Int]()


    sortedOrders.forEach { order in
        for i in 2...order.count {
            let order = order.map { String($0) }
            getCombination(order, i, &comStorage)
            comStorage.forEach { combination in
                courseTable[combination] = courseTable[combination] == nil ? 1 : courseTable[combination]! + 1
            }
            comStorage = []
        }
    }
    
    course.forEach { number in
        let filtered = courseTable.filter { $0.key.count == number }
        var max = 0
        
        if !filtered.isEmpty {
            max = filtered.max { $0.value < $1.value }!.value
        } else {
            return
        }
            
        if max == 1 {
            return
        }
        
        courseTable.forEach { course in
            if course.key.count == number, course.value == max {
                comStorage.append(course.key)
            }
        }
    }

    return comStorage.map { $0.joined() }.sorted()
}

func getCombination(_ arr: [String], _ r: Int, _ res: inout [[String]], _ now: [String] = [String]()) {
    let n = arr.count

    guard n > 0 else { return }

    if r == 0 {
        res.append(now)
    } else if n == r {
        res.append(now + arr)
    } else {
        getCombination(Array(arr[1...]), r - 1, &res, now + [arr.first!])
        getCombination(Array(arr[1...]), r, &res, now)
    }
}
