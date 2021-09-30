import Foundation

func solution(_ p:String) -> String {
    if p == "" {
        return p
    }
    
    var seperated = seperate(p)
    
    if isBalanced(seperated[0]) {
        return seperated[0] + solution(seperated[1])
    } else {
        seperated[0].removeFirst()
        seperated[0].removeLast()
        let reversed = reverse(seperated[0])
        return "(" + solution(seperated[1]) + ")" + reversed
    }
}

func seperate(_ p: String) -> [String] {
    var standard = 0
    var remainder = p
    var front = ""
    
    for i in p {
        if i == "(" {
            standard += 1
            front += String(i)
        } else {
            standard -= 1
            front += String(i)
        }
        
        remainder.removeFirst()
        
        if standard == 0 {
            break
        }
    }
    
    return [front, remainder]
}

func isBalanced(_ p: String) -> Bool {
    var standard = 0
    
    for i in p {
        if i == "(" {
            standard += 1
        } else {
            standard -= 1
        }
        
        if standard < 0 {
            return false
        }
    }
    
    return true
}

func reverse(_ p: String) -> String {
    return p.map { $0 == "(" ? ")" : "(" }.joined()
}
