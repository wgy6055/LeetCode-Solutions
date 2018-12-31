import Foundation

/// 14. 最长公共前缀
public func longestCommonPrefix(_ strs: [String]) -> String {
    guard strs.count > 0 else { return "" }
    guard strs.count != 1 else { return strs.first! }
    
    let strings = strs.sorted { (s1, s2) -> Bool in
        return s1.count < s2.count
    }
    
    var common = strings.first!
    for str in strings {
        if str.hasPrefix(common) {
            continue
        } else {
            guard common.count > 1 else { return "" }
            for _ in 0...common.count - 1 {
                common = String(common.dropLast())
                if str.hasPrefix(common) {
                    break
                }
            }
        }
    }
    
    return common
}
