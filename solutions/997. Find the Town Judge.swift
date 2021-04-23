class Solution {
    func findJudge(_ N: Int, _ trust: [[Int]]) -> Int {
        if N == 1 && trust.isEmpty {
            return 1
        }
        var graph: [Int: Set<Int>] = [:]
        for pair in trust {
            graph[pair[1], default: []].insert(pair[0])
        }
        let candidates = graph.keys.filter { graph[$0, default: []].count == N - 1 }
        let candidate = candidates.first ?? -1
        var result = candidate
        for (k, v) in graph {
            if k == candidate { continue }
            if v.contains(candidate) {
                result = -1
                break
            }
        }
        return result
    }
}
