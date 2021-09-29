class Solution {
    func isPerfectSquare(_ num: Int) -> Bool {
        var first = 1
        var last = num
        var result = false
        
        while first <= last {
            let mid = (first + last) / 2
            
            if mid * mid > num {
                last = mid - 1
            } else if mid * mid < num {
                first = mid + 1
            } else {
                result = true
                break
            }
        }
        
        return result
    }
}
