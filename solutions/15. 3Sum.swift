class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        guard nums.count > 0 else {
            return []
        }
        var result: [[Int]] = []
        let nums = nums.sorted()
        for i in 0 ..< nums.count {
            let x = nums[i]
            if i != 0 && x == nums[i - 1] { continue }
            var visited: Set<Int> = []
            var j = i + 1
            while j < nums.count {
                let y = nums[j]
                let z = -x - y
                if visited.contains(z) {
                    result.append([x, y, z])
                    while j + 1 < nums.count && nums[j + 1] == y {
                        j += 1
                    }
                }
                visited.insert(y)
                j += 1
            }
        }
        return result
    }
}
