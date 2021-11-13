class Solution {
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        let midIndex = (nums.count - 1) / 2
        
        let node = TreeNode(nums[midIndex])
        print(nums, midIndex)
        
        if midIndex - 1 >= 0 {
        node.left = sortedArrayToBST(nums[0...midIndex-1].map{Int($0)})
        }
        
        if midIndex + 1 < nums.count {
        node.right = sortedArrayToBST(nums[(midIndex+1)...].map{Int($0)})
        }
        
        return node
    }
}
