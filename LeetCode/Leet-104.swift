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
    func maxDepth(_ root: TreeNode?) -> Int {
        var toVisit = [root]
        var visited = [TreeNode]()
        var depth = 0
        
        while !toVisit.isEmpty {
            depth += 1
            for _ in 0..<toVisit.count {
                guard let node = toVisit.removeFirst() else { return 0 }
                visited.append(node)
                if let left = node.left {
                    toVisit.append(left)
                }
                if let right = node.right {
                    toVisit.append(right)
                }
            }
        }
        return depth
    }
}
