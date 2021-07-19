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
    func sumNumbers(_ root: TreeNode?) -> Int {
        dfs(root, [])
    }
    func dfs(_ root: TreeNode?, _ values: [String]) -> Int {
        guard let root = root else {
            return 0
        }
        var newValues = values
        newValues.append(String(root.val))
        
        if root.left == nil && root.right == nil {
            return Int(newValues.joined())!
        }
        
        return dfs(root.left, newValues) + dfs(root.right, newValues)
    }
}
