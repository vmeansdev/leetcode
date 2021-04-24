class Solution {
    func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
        var graph: [[Int]] = Array(repeating: [], count: numCourses)
        var color = Array(repeating: 0, count: numCourses)
        var cycleFound = false
​
        for edge in prerequisites {
            graph[edge[0]].append(edge[1])
        }
        func dfs(_ node: Int) {
            if color[node] == 2 {
                return
            } else if color[node] == 1 {
                cycleFound = true
                return
            } else {
                color[node] = 1
                for vertex in graph[node] {
                    dfs(vertex)
                }
                color[node] = 2
            }
        }
        for node in 0 ..< numCourses {
            if !cycleFound {
                dfs(node)
            }
        }
        return !cycleFound
    }
}
