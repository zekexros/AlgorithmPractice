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
    
    func rangeSumBST(_ root: TreeNode?, _ low: Int, _ high: Int) -> Int {
        search(root: root, low: low, high: high)
        return sum
    }
    
    func search(root: TreeNode?, low: Int, high: Int) {
        if root == nil {
            return
        }
        if root!.val >= low && root!.val <= high {
            sum += root!.val
        }
        if root!.left != nil {
            search(root: root!.left, low: low, high: high)
        }
        if root!.right != nil {
            search(root: root!.right, low: low, high: high)
        }
        
    }
}
