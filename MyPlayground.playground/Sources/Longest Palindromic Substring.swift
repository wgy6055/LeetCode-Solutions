import Foundation

public func longestPalindrome(_ s: String) -> String {
    guard s.count > 1 else { return s }
    
    let len = s.count
    let sArr = Array(s)
    
    var maxLen = 1, maxStart = 0
    var isPalin = Array(repeating: Array(repeating: false, count: len), count: len)
    
    // len = 1
    for i in 0..<len {
        isPalin[i][i] = true
    }
    // len = 2
    for i in 0..<len - 1 {
        if sArr[i] == sArr[i + 1] {
            isPalin[i][i + 1] = true
            maxLen = 2
            maxStart = i
        }
    }
    // len >= 3
    if len >= 3 {
        for length in 3...len {
            for i in 0..<len - length + 1 {
                if sArr[i] == sArr[i + length - 1] && isPalin[i + 1][i + length - 2] {
                    isPalin[i][i + length - 1] = true
                    maxLen = length
                    maxStart = i
                }
            }
        }
    }
    
    return String(sArr[maxStart...maxStart + maxLen - 1])
}
