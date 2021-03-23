class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        while left <= right {
            let mid = left + (right - left) / 2
            let num = nums[mid]
            if num < target {
                left = mid + 1
            } else if num > target {
                right = mid - 1
            } else {
                return mid
            }
        }
        return -1
    }
}