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
    func deepestLeavesSum(_ root: TreeNode?) -> Int {
        var sumValueWithDepth = [Int: Int]()
        dfs(root, 0, &sumValueWithDepth)
        return sumValueWithDepth[sumValueWithDepth.keys.max() ?? 0] ?? 0
    }
    
    func dfs(_ root: TreeNode?, _ depth: Int, _ sumValueWithDepth: inout [Int:Int]) {
        guard let root = root else { return }
        
        if root.left == nil, root.right == nil {
            sumValueWithDepth[depth] = sumValueWithDepth[depth] == nil ? root.val : sumValueWithDepth[depth]! + root.val
            return
        }
        dfs(root.left, depth+1, &sumValueWithDepth)
        dfs(root.right, depth+1, &sumValueWithDepth)
    }
}
