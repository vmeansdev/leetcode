/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var neighbors: [Node?]
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.neighbors = []
 *     }
 * }
 */
​
class Solution {
    func cloneGraph(_ node: Node?) -> Node? {
        guard let root = node else {
            return nil
        }
        var visited: [Int: Node] = [:]
        var queue: [Node] = [root]
        var result = Node(root.val)
        visited[root.val] = result
​
        while !queue.isEmpty {
            let current = queue.removeFirst()
            for neighbor in current.neighbors {
                guard let neighbor = neighbor else { continue }
                if let node = visited[neighbor.val] {
                    visited[current.val]?.neighbors.append(node)
                } else {
                    queue.append(neighbor)
                    let node = Node(neighbor.val)
                    visited[node.val] = node
                    visited[current.val]?.neighbors.append(node)
                }
            }
        }
        return result
    }
}
