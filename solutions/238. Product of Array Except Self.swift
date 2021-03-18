class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        let count = nums.count
        var result: [Int] = Array(repeating: 0, count: count)
        var left: [Int] = Array(repeating: 0, count: count)
        var right: [Int] = Array(repeating: 0, count: count)
​
        left[0] = 1
        right[count - 1] = 1
​
        for i in 1 ..< count {
            left[i] = nums[i - 1] * left[i - 1]
        }
        for i in (0 ..< count - 1).reversed() {
            right[i] = nums[i + 1] * right[i + 1]
        }
        for i in 0 ..< count {
            result[i] = left[i] * right[i]
        }
        return result
    }
}
