class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        guard nums.count > 0 else {
            return []
        }
        var result: [[Int]] = []
        let nums = nums.sorted()
        for i in 0 ..< nums.count {
            if i != 0 && nums[i] == nums[i - 1] { continue }
            var visited: Set<Int> = []
            var j = i + 1
            while j < nums.count {
                let z = -nums[i] - nums[j]
                if visited.contains(z) {
                    result.append([nums[i], nums[j], z])
                    while j + 1 < nums.count && nums[j + 1] == nums[j] {
                        j += 1
                    }
                }
                visited.insert(nums[j])
                j += 1
            }
        }
        return result
    }
}
