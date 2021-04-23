class Solution {
    func networkDelayTime(_ times: [[Int]], _ n: Int, _ k: Int) -> Int {
        var graph: [Int: [[Int]]] = [:]
        for node in times {
            let u = node[0]
            let v = node[1]
            let w = node[2]
            graph[u, default: []].append([w, v])
        }
        var dist: [Int: Int] = [:]
        (1 ... n).forEach { dist[$0] = Int.max }
        func dfs(_ node: Int, _ elapsed: Int) {
            guard elapsed < dist[node, default: -1] else {
                return
            }
            dist[node] = elapsed
            for l in graph[node, default: []].sorted(by: { $0[0] < $1[0] }) {
                let time = l[0]
                let nei = l[1]
                dfs(nei, elapsed + time)
            }
        }
        dfs(k, 0)
        let ans = dist.values.compactMap { $0 }.max() ?? -1
        return ans < Int.max ? ans : -1
    }
}
