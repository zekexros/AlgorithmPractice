import Foundation

func solution(_ numbers:String) -> Int {
    var permutationArray = [Int]()
    let numbers = numbers.map { Int(String($0))! }
    for i in 1...numbers.count {
        getPermutation(numbers, i, &permutationArray)
    }
    return validifyDecimal(array: Array(Set(permutationArray))).count
}

// 순열(재귀함수)
func getPermutation(_ arr: [Int], _ r: Int, _ res: inout [Int], _ idx: Int = 0) {
    if idx == r {
        let element = Int(Array(arr[0..<idx]).map { String($0) }.joined())!
        res.append(element)
        return
    }
    
    var arr = arr
    
    for i in idx..<arr.count {
        arr.swapAt(idx, i)
        getPermutation(arr, r, &res, idx + 1)
        arr.swapAt(idx, i)
    }
}

// 소수 판별
func validifyDecimal(array: [Int]) -> [Int] {
    let result = array.filter { element in
        let squareRoot = Int(sqrt(Double(element)))
        
        if element == 1 {
            return false
        } else if element == 2 {
            return true
        } else if element%2 == 0 {
            return false
        } else if squareRoot >= 2 {
            for i in 2...squareRoot {
                if element % i == 0 {
                    return false
                }
            }
        }
        return true
    }
    
    return result
}
