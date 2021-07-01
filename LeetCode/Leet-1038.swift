import Foundation

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
    
    var sum = 0
    
    func bstToGst(_ root: TreeNode?) -> TreeNode? {
        dfs(root)
    }
    
    func dfs(_ root: TreeNode?) -> TreeNode? {
        guard let node = root else { return nil }
        node.right = dfs(node.right)
        sum += node.val
        node.val = sum
        node.left = dfs(node.left)
        return node
    }
}
