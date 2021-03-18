class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        let count = nums.count
        var result: [Int] = Array(repeating: 0, count: count)
        result[0] = 1
        for i in 1 ..< count {
            result[i] = nums[i - 1] * result[i - 1]
        }
        var right = 1
        for i in (0 ..< count).reversed() {
            result[i] = result[i] * right
            right *= nums[i]
        }
        return result
    }
}
