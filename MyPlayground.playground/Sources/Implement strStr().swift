import Foundation

public func strStr(_ haystack: String, _ needle: String) -> Int {
    guard !needle.isEmpty else { return 0 }
    guard !haystack.isEmpty else { return -1 }
    guard needle.count <= haystack.count else { return -1 }
    
    let hChars = Array(haystack.characters), nChars = Array(needle.characters)
    let hLen = hChars.count, nLen = nChars.count
    
    for i in 0...hLen - nLen {
        if hChars[i] == nChars[0] {
            for j in 0..<nLen {
                if hChars[i + j] != nChars[j] {
                    break
                }
                if j + 1 == nLen {
                    return i
                }
            }
        }
    }
    
    return -1
}
