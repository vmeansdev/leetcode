/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func isBalanced(_ root: TreeNode?) -> Bool {
        guard root != nil else { return true }
        return abs(treeHeight(root?.left) - treeHeight(root?.right)) <= 1
        && isBalanced(root?.left)
        && isBalanced(root?.right)
    }
    
    private func treeHeight(_ root: TreeNode?) -> Int {
        guard let node = root else {
           return 0
        }
        return 1 + max(treeHeight(node.left), treeHeight(node.right))
    }
}
