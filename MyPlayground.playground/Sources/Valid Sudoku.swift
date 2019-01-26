import Foundation

public func isValidSudoku(_ board: [[Character]]) -> Bool {
    var used1 = [[Bool]](repeating: [Bool](repeating: false, count: 9), count: 9),
    used2 = [[Bool]](repeating: [Bool](repeating: false, count: 9), count: 9),
    used3 = [[Bool]](repeating: [Bool](repeating: false, count: 9), count: 9)
    
    for i in 0..<9 {
        for j in 0..<9 {
            if board[i][j] != "." {
                let num = UnicodeScalar(String(board[i][j]))!.value - UnicodeScalar("0")!.value - 1,
                k = i / 3 * 3 + j / 3
                guard !used1[i][Int(num)] && !used2[j][Int(num)] && !used3[k][Int(num)] else {
                    return false
                }
                used1[i][Int(num)] = true
                used2[j][Int(num)] = true
                used3[k][Int(num)] = true
            }
        }
    }
    
    return true
}
