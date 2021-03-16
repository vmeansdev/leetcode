class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var i = 0
        for num in nums {
            if num != 0 {
                nums[i] = num
                i += 1
            }
        }
        while i < nums.count {
            nums[i] = 0
            i += 1
        }
    }
}
