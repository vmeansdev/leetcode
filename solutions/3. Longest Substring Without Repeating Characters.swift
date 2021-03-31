class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        guard s.count > 1 else {
            return s.count
        }
        var dict: [Character: Int] = [:]
        var maxCount = 0
        var start = 0
        for (i, char) in s.enumerated() {
            if let val = dict[char], val >= start {
                start = val + 1
            }
            dict[char] = i
            maxCount = max(maxCount, i - start + 1)
        }
        return maxCount
    }
}
