class Solution {
    func largestRectangleArea(_ heights: [Int]) -> Int {
        let count = heights.count
        var stack: [Int] = []
​
        var left = Array(repeating: -1, count: count)
        // find all left limits first
        for (i, height) in heights.enumerated() {
           if stack.isEmpty {
               left[i] = 0
               stack.append(i)
           } else {
               while !stack.isEmpty && heights[stack[stack.count - 1]] >= height {
                   stack.removeLast()
               }
               left[i] = stack.isEmpty ? 0 : stack[stack.count - 1] + 1
               stack.append(i)
           }
        }
​
        stack.removeAll()
​
        var right = Array(repeating: -1, count: count)
        // find right limits
        for (i, height) in heights.enumerated().reversed() {
           if stack.isEmpty {
               right[i] = count - 1
               stack.append(i)
           } else {
               while !stack.isEmpty && heights[stack[stack.count - 1]] >= height {
                   stack.removeLast()
               }
               right[i] = stack.isEmpty ? count - 1 : stack[stack.count - 1] - 1
               stack.append(i)
           }
        }
        
        var result = 0
        // find the largest area
        for i in 0 ..< count {
           result = max(result, heights[i] * (right[i] - left[i] + 1))
        }
​
        return result
    }
}
