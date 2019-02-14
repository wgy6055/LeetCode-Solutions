import Foundation

public func setZeroes(_ matrix: inout [[Int]]) {
    var col0 = 1
    for i in 0..<matrix.count {
        if matrix[i][0] == 0 {
            col0 = 0
        }
        for j in 1..<matrix.first!.count {
            if matrix[i][j] == 0 {
                matrix[i][0] = 0
                matrix[0][j] = 0
            }
        }
    }
    
    for i in (0..<matrix.count).reversed() {
        for j in (1..<matrix.first!.count).reversed() {
            if matrix[i][0] == 0 || matrix[0][j] == 0 {
                matrix[i][j] = 0
            }
        }
        if col0 == 0 {
            matrix[i][0] = 0
        }
    }
}
