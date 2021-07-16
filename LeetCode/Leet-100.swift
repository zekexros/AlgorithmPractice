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
    }
}

class Solution {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        var firstStack = [Int?]()
        var secondStack = [Int?]()
        recursion(p, stack: &firstStack)
        recursion(q, stack: &secondStack)
        return firstStack == secondStack
    }
    func recursion(_ treeNode: TreeNode?, stack: inout [Int?]) {
        if treeNode == nil {
            stack.append(nil)
            return
        } else {
            stack.append(treeNode?.val)
        }
        recursion(treeNode?.left, stack: &stack)
        recursion(treeNode?.right, stack: &stack)
    }
}
