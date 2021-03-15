class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count > 1 else {
            return 0
        }
        var min = prices[0]
        var diff = 0 
        for price in prices {
            if price < min {
                min = price
            }
            let newDiff = price - min
            if newDiff > diff {
                diff = newDiff
            }
        }
        return diff
    }
}
