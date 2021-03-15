class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var numToIndex: [Int: Int] = [:]
        for (index, num) in nums.enumerated() {
            let diff = target - nums[index]
            if let desiredIndex = numToIndex[diff] {
                return [index, desiredIndex]
            }
            numToIndex[num] = index
        }
        return []
    }
}
