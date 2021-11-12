class Solution {
    func mergeTrees(_ t1: TreeNode?, _ t2: TreeNode?) -> TreeNode? {
        if t1 == nil, t2 == nil { return nil }
        let root = TreeNode((t1?.val ?? 0) + (t2?.val ?? 0))
        root.left = mergeTrees(t1?.left, t2?.left)
        root.right = mergeTrees(t1?.right, t2?.right)
        return root
    }
}
