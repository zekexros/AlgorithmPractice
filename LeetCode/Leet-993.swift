public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    func isCousins(_ root: TreeNode?, _ x: Int, _ y: Int) -> Bool {
        var toVisit = [root]
        var visited = [TreeNode?]()
        
        while !toVisit.isEmpty {
            var count = [Int]()
            for _ in 0..<toVisit.count {
                let node = toVisit.removeFirst()
                if (node?.left?.val == x && node?.right?.val == y) || (node?.left?.val == y && node?.right?.val == x) {
                    return false
                }
                if node?.val == x || node?.val == y {
                    count.append(node!.val)
                }
                if count.count == 2 {
                    return true
                }
                visited.append(node)
                
                if let left = node?.left {
                    toVisit.append(left)
                }
                if let right = node?.right {
                    toVisit.append(right)
                }
                
            }
            count.removeAll()
        }
        return false
    }
}
