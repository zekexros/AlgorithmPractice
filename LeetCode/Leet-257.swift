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
    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        let nodeWithPath = (node: root, path: "")
        var toVisit = [nodeWithPath]
        var answer = [String]()
        
        while !toVisit.isEmpty {
            let element = toVisit.removeLast()
            let node = element.node!
            let path = element.path
            if node.left == nil && node.right == nil {
                answer.append(path + String(node.val))
            }
            
            if let left = node.left {
                let element = (node: left, path: path + String(node.val) + "->")
                toVisit.append(element)
            }
            
            if let right = node.right {
                let element = (node: right, path: path + String(node.val) + "->")
                toVisit.append(element)
            }
        }
        return answer
    }
}
