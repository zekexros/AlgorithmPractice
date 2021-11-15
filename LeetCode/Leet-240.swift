import Foundation

class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        let firstElements = matrix.map { $0[0] }
        let lastIndex = binarySearch(target: target, array: firstElements)
        print(lastIndex)
        for i in 0...lastIndex {
            if binarySearch2(target: target, array: matrix[i]) != -1 {
                return true
            }
        }
        
        return false
    }
    
    func binarySearch(target: Int, array: [Int]) -> Int {
        var start = 0
        var last = array.count - 1
        
        while start <= last {
            let mid = (start + last) / 2
                
            if array[mid] < target {
                start = mid + 1
            } else if array[mid] > target {
                last = mid - 1
            } else {
                break
            }
        }
        
        return last < 0 ? start : last
    }
    
    func binarySearch2(target: Int, array: [Int]) -> Int {
        var start = 0
        var last = array.count - 1
        
        while start <= last {
            let mid = (start + last) / 2
                
            if array[mid] < target {
                start = mid + 1
            } else if array[mid] > target {
                last = mid - 1
            } else {
                return mid
            }
        }
        
        return -1
    }
}
