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
    func deepestLeavesSum(_ root: TreeNode?) -> Int {
        var toVisited = [root]
        var answer = 0
        while !toVisited.isEmpty {
            answer = 0
            for _ in 0..<toVisited.count {
                guard let node = toVisited.removeFirst() else { return 0 }
                if let left = node.left {
                    toVisited.append(left)
                }
                if let right = node.right {
                    toVisited.append(right)
                }
                answer += node.val
            }
        }
        return answer
    }
}
