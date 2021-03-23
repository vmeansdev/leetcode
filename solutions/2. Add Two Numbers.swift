/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {    
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var node1 = l1
        var node2 = l2
        var resultNode: ListNode? = ListNode()
        var resultHead = resultNode
        var transfer = 0
        while node1 != nil || node2 != nil {
            let res = (node1?.val ?? 0) + (node2?.val ?? 0) + transfer
            resultNode?.val = res % 10
            transfer = res < 10 ? 0 : 1
            node1 = node1?.next
            node2 = node2?.next
            if node1 != nil || node2 != nil {
                resultNode?.next = ListNode()
                resultNode = resultNode?.next
            }
        }
        if transfer != 0 {
            resultNode?.next = ListNode(transfer)
            resultNode = resultNode?.next
        }
        return resultHead
    }
}
