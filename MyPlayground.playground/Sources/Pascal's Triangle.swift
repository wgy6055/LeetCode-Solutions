import Foundation

public func generate(_ numRows: Int) -> [[Int]] {
    guard numRows > 0 else { return [[Int]]() }
    
    var res = [[Int]]()
    for row in 0..<numRows {
        var array = [Int](repeating: 1, count: row + 1)
        
        guard row > 1 else {
            res.append(array)
            continue
        }
        
        for column in 1..<row {
            array[column] = res[row - 1][column - 1] + res[row - 1][column]
        }
        
        res.append(array)
    }
    return res
}
