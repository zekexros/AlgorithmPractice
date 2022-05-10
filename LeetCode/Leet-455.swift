import Foundation

class Solution {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        var count = 0
        let g = g.sorted(by: >)
        let s = s.sorted(by: >)
        recursive(g: g, s: s, count: &count)
        
        return count
    }
}
func recursive(g: [Int], s: [Int], count: inout Int) {
    var g = g, s = s
    if s.isEmpty || g.isEmpty {
        return
    }
    
    if g[g.count-1] > s[s.count-1] {
        s.removeLast()
    } else if g[g.count-1] <= s[s.count-1] {
        s.removeLast()
        g.removeLast()
        count += 1
    }
    recursive(g: g, s: s, count: &count)
}
