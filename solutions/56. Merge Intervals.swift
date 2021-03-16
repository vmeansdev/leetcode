class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        var sortedIntervals = intervals.sorted { $0[0] < $1[0] }
        var result: [[Int]] = []
        for interval in sortedIntervals {
            if result.isEmpty { result.append(interval); continue }
            if let last = result.last, last[1] < interval[0] {
                result.append(interval)
            } else {
                if let last = result.last {
                    result[result.count - 1][1] = max(last[1], interval[1])
                }
            }
        }
        return result
    }
}
