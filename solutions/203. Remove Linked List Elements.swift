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
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        var newHead = head
        var node = head
        while node != nil {
            if node?.val == val && node === newHead {
                newHead = node?.next
                node = newHead
                continue
            }
            while node?.next?.val == val {
                node?.next = node?.next?.next
            }
            node = node?.next
        }
        return newHead
    }
}
