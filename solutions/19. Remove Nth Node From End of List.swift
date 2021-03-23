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
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var nodes: [ListNode?] = []
        var newHead = head
        var node = head
        while node != nil {
            nodes.append(node)
            node = node?.next
        }
        guard !nodes.isEmpty else {
            return nil
        }
        let index = nodes.count - n
        if index == 0 {
            newHead = newHead?.next
            return newHead
        }
        node = nodes[index - 1]
        node?.next = node?.next?.next
        return newHead
    }
}
