import Foundation

public func minPathSum(_ grid: [[Int]]) -> Int {
    guard !grid.isEmpty else { return 0 }
    guard let n = grid.first?.count else { return 0 }
    
    let m = grid.count
    
    var res = [[Int]](repeating: [Int](repeating: -1, count: n), count: m)
    
    for i in 0..<m {
        for j in 0..<n {
            if i == 0 && j == 0 {
                res[i][j] = grid[i][j]
                continue
            }
            if i == 0 {
                res[i][j] = grid[i][j] + res[i][j - 1]
                continue
            }
            if j == 0 {
                res[i][j] = grid[i][j] + res[i - 1][j]
                continue
            }
            res[i][j] = grid[i][j] + min(res[i][j - 1], res[i - 1][j])
        }
    }
    
    return res[m - 1][n - 1]
}
