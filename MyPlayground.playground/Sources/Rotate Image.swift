import Foundation

public func rotate(_ matrix: inout [[Int]]) {
    let n = matrix.count
    matrix.reverse()
    for i in 0..<n {
        for j in i + 1..<n {
            (matrix[i][j], matrix[j][i]) = (matrix[j][i], matrix[i][j])
        }
    }
}

//public func rotate(_ matrix: inout [[Int]]) {
//    let n = matrix.count
//    for layer in 0..<n / 2 {
//        let start = layer, end = n - layer - 1
//        for i in start..<end {
//            let offset = i - start
//            (matrix[start][i], matrix[i][end], matrix[end][end - offset], matrix[end - offset][start]) =
//            (matrix[end - offset][start], matrix[start][i], matrix[i][end], matrix[end][end - offset])
//        }
//    }
//}
