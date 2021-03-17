class Solution {    
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        guard !matrix.isEmpty else {
            return []
        }
        var visitedCells: [Int: Set<Int>] = [:]
        var result: [Int] = []
        let rows = matrix.count
        let cols = matrix[0].count
        let rowDirections = [0, 1, 0, -1]
        let colDirections = [1, 0, -1, 0]
        var col = 0
        var row = 0
        var direction = 0
        for _ in 0 ..< (rows * cols) {
            result.append(matrix[row][col])
            visitedCells[row, default: []].insert(col)
            let (nextRow, nextCol) = (row + rowDirections[direction], col + colDirections[direction])
            if rows > nextRow && nextRow >= 0 
            && cols > nextCol && nextCol >= 0
            && !visitedCells[nextRow, default: []].contains(nextCol) {
                row = nextRow
                col = nextCol
            } else {
                direction = (direction + 1) % 4
                (row, col) = (row + rowDirections[direction], col + colDirections[direction])
            }
        }
        return result
    }
}
