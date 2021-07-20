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
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        var postorder = [Int]()
        dfs(root, &postorder)
        return postorder
    }
    func dfs(_ root: TreeNode?, _ postorder: inout [Int]) {
        guard let root = root else {
            return
        }
        dfs(root.left, &postorder)
        dfs(root.right, &postorder)
        postorder.append(root.val)
    }
}
