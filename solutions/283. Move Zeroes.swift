class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        for (index, num) in nums.enumerated().reversed() {
            if num == 0 {
                nums.remove(at: index)
                nums.append(num)
            }
        }
    }
}
