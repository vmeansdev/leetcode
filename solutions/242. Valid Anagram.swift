class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else {
            return false
        }
        let sTable = s.unicodeScalars.reduce(into: [:]) { result, scalar in
            result[scalar, default: 0] += 1
        }
        let tTable = t.unicodeScalars.reduce(into: [:]) { result, scalar in
            result[scalar, default: 0] += 1
        }
        for scalar in sTable.keys {
            if 
                let tScalarCount = tTable[scalar], 
                let sScalarCount = sTable[scalar], 
                tScalarCount == sScalarCount 
            {
                continue
            } else {
                return false
            }
        }
        return true
    }
}
