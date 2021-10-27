import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil && l2 == nil || l2 == nil {
            return l1
        } else if l1 == nil {
            return l2
        }
        
        var m1: ListNode? = nil
        var m2: ListNode? = nil
        
        if l1!.val <= l2!.val {
            m1 = l1
            m2 = l2
        } else {
            m1 = l2
            m2 = l1
        }
        
        m1?.next = mergeTwoLists(m1?.next, m2)
        
        return m1
    }
}
