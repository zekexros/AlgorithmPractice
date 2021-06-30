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
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        
        guard let answer = root else { return nil }
        let left = root?.left
        let right = root?.right
        answer.left = invertTree(right)
        answer.right = invertTree(left)
        
        return answer
    }
}
