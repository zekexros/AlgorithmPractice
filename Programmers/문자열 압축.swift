import Foundation

func solution(_ s:String) -> Int {
    var result = s
    
    if s.count == 1 {
        return 1
    }
    
    for i in 1...s.count/2 { //글자수의 반을 나눠 반복문으로 하나씩 갯수를 구해줘야한다.
        var s = s
        var slicingStorage = [String]()
        
        //자르기
        while !s.isEmpty {
            let prefix = String(s.prefix(i))
            slicingStorage.append(prefix)
            
            if s.count < i {
                s.removeAll()
                break
            } else {
                s.removeFirst(i)
            }
        }
        
        
        //압축
        var prev = ""
        var word = ""
        var count = 1
        for z in 0 ..< slicingStorage.count{
            if prev == ""{
                prev = slicingStorage[0]
            } else {
                if prev == slicingStorage[z]{
                    count += 1
                } else {
                    if count == 1{
                        word.append("\(prev)")
                    } else {
                        word.append("\(count)\(prev)")
                    }
                    prev = slicingStorage[z]
                    count = 1
                }
            }
        }
        
        if count == 1{
            word.append("\(prev)")
        } else {
            word.append("\(count)\(prev)")
        }
        
        if word.count < result.count{
            result = word
        }
    }

    return result.count
}

