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
    func minDepth(_ root: TreeNode?) -> Int {
        var needVisitQueue = [root]
        var visitiedQueue = [TreeNode]()
        var depth = 1
        
        while !needVisitQueue.isEmpty {
            for _ in needVisitQueue {
                guard let node = needVisitQueue.removeFirst() else { return 0 }
                visitiedQueue.append(node)
                
                if let left = node.left {
                    needVisitQueue.append(left)
                }
                if let right = node.right {
                    needVisitQueue.append(right)
                }
                if node.left == nil && node.right == nil {
                    return depth
                }
                
            }
            depth += 1
        }
        return depth
    }
}
