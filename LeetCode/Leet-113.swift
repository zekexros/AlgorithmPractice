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
    func pathSum(_ root: TreeNode?, _ targetSum: Int) -> [[Int]] {
        guard let root = root else {
            return []
        }
        var output = [[Int]]()
        dfs(root, targetSum: targetSum, [], &output)
        return output
    }
    
    func dfs(_ root: TreeNode?, targetSum: Int, _ pathSum: [Int], _ output: inout [[Int]]) {
        guard let root = root else {
            return
        }
        var temp = pathSum
        temp.append(root.val)
        
        if root.left == nil && root.right == nil {
            if temp.reduce(0,+) == targetSum {
                output.append(temp)
            }
            return
        }
        dfs(root.left, targetSum: targetSum, temp, &output)
        dfs(root.right, targetSum: targetSum, temp, &output)
    }
}
