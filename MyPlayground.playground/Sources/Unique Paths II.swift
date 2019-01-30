import Foundation

public func uniquePathsWithObstacles(_ obstacleGrid: [[Int]]) -> Int {
    guard !obstacleGrid.isEmpty else { return 0 }
    guard let n = obstacleGrid.first?.count else { return 0 }
    
    let m = obstacleGrid.count
    
    var res = [[Int]](repeating: [Int](repeating: -1, count: n), count: m)
    
    for i in 0..<m {
        for j in 0..<n {
            if i == 0 && j == 0 {
                res[i][j] = obstacleGrid[i][j] == 0 ? 1 : 0
                continue
            }
            if obstacleGrid[i][j] == 1 {
                res[i][j] = 0
                continue
            }
            if i == 0 {
                res[i][j] = res[i][j - 1]
                continue
            }
            if j == 0 {
                res[i][j] = res[i - 1][j]
                continue
            }
            res[i][j] = res[i - 1][j] + res[i][j - 1]
        }
    }
    
    return res[m - 1][n - 1]
}
