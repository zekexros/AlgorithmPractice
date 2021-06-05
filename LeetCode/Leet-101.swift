
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
        return check(leftNode: root?.left, rightNode: root?.right)
    }
    
    func check(leftNode: TreeNode?, rightNode: TreeNode?) -> Bool {
        guard let left = leftNode, let right = rightNode else {
            return leftNode == nil && rightNode == nil
        }
        return check(leftNode: left.left, rightNode: right.right) && check(leftNode: left.right, rightNode: right.left) && left.val == right.val
    }
    
}
