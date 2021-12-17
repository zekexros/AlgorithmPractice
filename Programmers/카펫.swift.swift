import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    var result = [Int]()

    for i in 1...yellow {
        if yellow % i == 0 {
            var x = i, y = yellow / x
            let brownLength = (x * 2) + (y * 2) + 4
            
            if x >= y, brownLength == brown {
                result += [x+2, y+2]
                break
            }
        }
    }

    return result
}
