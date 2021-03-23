class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        guard !matrix.isEmpty else {
            return false
        }
        for row in matrix {
            var left = 0
            var right = row.count - 1
            while left <= right {
                let mid = left + (right - left) / 2
                let num = row[mid]
                if num == target {
                    return true
                }
                if num < target {
                    left = mid + 1
                } else {
                    right = mid - 1
                }
            }
        }
        return false
    }
}
