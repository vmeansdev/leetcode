class Solution {
    var calculated: [Int: Int] = [:]
    func fib(_ n: Int) -> Int {
        if n == 0 { return 0 }
        if n == 1 { return 1 }
        if let result = calculated[n] {
            return result
        } else {
            calculated[n] = fib(n - 1) + fib(n - 2)
        }
        return calculated[n, default: 0]
    }
}
