import Foundation

func solution(_ n:Int, _ times:[Int]) -> Int64 {
    let times = times.sorted(by: <)
    var minTime = 1
    var maxTime = times.last! * n
    
    while minTime <= maxTime {
        let midTime = (minTime + maxTime) / 2
        var passImmigration = 0
        
        times.forEach { time in
            passImmigration += midTime / time
        }

        if passImmigration > n {
            maxTime = midTime - 1
        } else if passImmigration < n {
            minTime = midTime + 1
        } else {
            maxTime = midTime - 1
        }
    }
        
    return Int64(minTime)
}
