import Foundation

public func uniquePaths(_ m: Int, _ n: Int) -> Int {
    var res = [[Int]](repeating: [Int](repeating: 1, count: n), count: m)
    
    for i in 1..<m {
        for j in 1..<n {
            res[i][j] = res[i - 1][j] + res[i][j - 1]
        }
    }
    
    return res[m - 1][n - 1]
}
