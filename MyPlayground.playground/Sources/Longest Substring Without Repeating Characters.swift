import Foundation

public func lengthOfLongestSubstring(_ s: String) -> Int {
    let sArr = Array(s)
    var i = 0, j = 0, res = 0
    var set = Set<Character>()
    
    while i < sArr.count && j < sArr.count {
        if !set.contains(sArr[j]) {
            set.insert(sArr[j])
            j += 1
            res = max(res, j - i)
        } else {
            set.remove(sArr[i])
            i += 1
        }
    }
    return res
}
