import Foundation

public func exist(_ board: [[Character]], _ word: String) -> Bool {
    guard !board.isEmpty, !board[0].isEmpty else { return false }
    
    let m = board.count, n = board[0].count
    var visited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: m)
    let wordContent = Array(word)
    
    for i in 0..<m {
        for j in 0..<n {
            if board[i][j] == wordContent[0] && helper(board, wordContent, m, n, i, j, &visited, 0) {
                return true
            }
        }
    }
    
    return false
}

fileprivate func helper(_ board: [[Character]],
                        _ wordContent: [Character],
                        _ m: Int, _ n: Int, _ i: Int, _ j: Int,
                        _ visited: inout [[Bool]],
                        _ index: Int) -> Bool {
    if index == wordContent.count {
        return true
    }
    guard i >= 0, i < m, j >= 0, j < n else { return false }
    guard !visited[i][j] && board[i][j] == wordContent[index] else { return false }
    
    visited[i][j] = true
    
    if helper(board, wordContent, m, n, i + 1, j, &visited, index + 1)
        || helper(board, wordContent, m, n, i, j + 1, &visited, index + 1)
        || helper(board, wordContent, m, n, i - 1, j, &visited, index + 1)
        || helper(board, wordContent, m, n, i, j - 1, &visited, index + 1) {
        return true
    }
    
    visited[i][j] = false
    
    return false
}
