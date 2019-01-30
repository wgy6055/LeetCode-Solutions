import Foundation

public func generateMatrix(_ n: Int) -> [[Int]] {
    guard n > 0 else { return [[Int]]() }
    
    var res = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
    var num = 1
    
    for layer in 0..<n / 2 {
        let start = layer, end = n - layer - 1
        for i in start..<end {
            res[start][i] = num
            num += 1
        }
        
        for i in start..<end {
            res[i][end] = num
            num += 1
        }
        
        for i in (start + 1...end).reversed() {
            res[end][i] = num
            num += 1
        }
        
        for i in (start + 1...end).reversed() {
            res[i][start] = num
            num += 1
        }
    }
    
    if n % 2 != 0 {
        res[n / 2][n / 2] = num
    }
    
    return res
}
