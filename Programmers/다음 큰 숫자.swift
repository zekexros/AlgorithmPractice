import Foundation

func solution(_ n:Int) -> Int {
    var n = n
    let binary = String(n, radix: 2)
    let countOfOneN = binary.filter { $0 == "1" }.count
    var result = 0
    
    while true {
        let m = n+1
        let binary = String(m, radix:2)
        let countOfOneM = binary.filter { $0 == "1" }.count
        
        if countOfOneN == countOfOneM {
            result = m
            break
        }
        n = m
    }
    
    return result
}
