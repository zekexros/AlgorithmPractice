import Foundation

class Solution {
    func sortList(_ head: ListNode?) -> ListNode? {
        if head == nil { return nil }
        var nodes = [ListNode]()
        var node = head
        while true {
            if node == nil {
                break
            } else {
                let item = ListNode(node!.val)
                nodes.append(item)
                node = node?.next
            }
        }
        
        nodes.sort { (lhs, rhs) -> Bool in
            lhs.val < rhs.val
        }
        
        if nodes.count >= 2 {
            for i in 0..<nodes.count {
                if i+1 < nodes.count {
                    nodes[i].next = nodes[i+1]
                }
            }
        }
        
        return nodes[0]
    }
}
