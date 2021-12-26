import Foundation

func solution(_ s:String) -> Bool {
    var pCnt = 0
    var yCnt = 0
    s.forEach { element in
        if element.lowercased() == "p" {
            pCnt += 1
        } else if element.lowercased() == "y" {
            yCnt += 1
        }
    }
    
    return pCnt == yCnt ? true : false
}
