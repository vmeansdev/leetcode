class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var result = nums[0]
        var sum = 0
        var minSum = 0
​
        for num in nums {
            sum += num
            let current = sum - minSum
            if current > result {
                result = current
            }
            if sum < minSum {
                minSum = sum
            }
        }
        return result
    }
}
